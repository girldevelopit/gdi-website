module Polyamorous
  module JoinAssociationExtensions
    def self.included(base)
      base.class_eval do
        attr_reader :join_type
        alias_method_chain :initialize, :polymorphism
        if base.method_defined?(:active_record)
          alias_method :base_klass, :active_record
        end

        if ActiveRecord::VERSION::STRING =~ /^3\.0\./
          alias_method_chain :association_join, :polymorphism
        else
          alias_method_chain :build_constraint, :polymorphism
        end
      end
    end

    def initialize_with_polymorphism(reflection, children, polymorphic_class = nil, join_type = Arel::Nodes::InnerJoin)
      @join_type = join_type
      if polymorphic_class && ::ActiveRecord::Base > polymorphic_class
        swapping_reflection_klass(reflection, polymorphic_class) do |reflection|
          initialize_without_polymorphism(reflection, children)
          self.reflection.options[:polymorphic] = true
        end
      else
        initialize_without_polymorphism(reflection, children)
      end
    end

    def swapping_reflection_klass(reflection, klass)
      new_reflection = reflection.clone
      new_reflection.instance_variable_set(:@options, reflection.options.clone)
      new_reflection.options.delete(:polymorphic)
      new_reflection.instance_variable_set(:@klass, klass)
      yield new_reflection
    end

    # Reference https://github.com/rails/rails/commit/9b15db51b78028bfecdb85595624de4b838adbd1
    # NOTE Not sure we still need it?
    def ==(other)
      base_klass == other.base_klass
    end

    def build_constraint_with_polymorphism(klass, table, key, foreign_table, foreign_key)
      if reflection.options[:polymorphic]
        build_constraint_without_polymorphism(klass, table, key, foreign_table, foreign_key).and(
          foreign_table[reflection.foreign_type].eq(reflection.klass.name)
        )
      else
        build_constraint_without_polymorphism(klass, table, key, foreign_table, foreign_key)
      end
    end

    def association_join_with_polymorphism
      return @join if @Join

      @join = association_join_without_polymorphism

      if reflection.macro == :belongs_to && reflection.options[:polymorphic]
        aliased_table = Arel::Table.new(table_name, :as      => @aliased_table_name,
                                                    :engine  => arel_engine,
                                                    :columns => klass.columns)

        parent_table = Arel::Table.new(parent.table_name, :as      => parent.aliased_table_name,
                                                          :engine  => arel_engine,
                                                          :columns => parent.base_klass.columns)

        @join << parent_table[reflection.options[:foreign_type]].eq(reflection.klass.name)
      end

      @join
    end
  end
end
