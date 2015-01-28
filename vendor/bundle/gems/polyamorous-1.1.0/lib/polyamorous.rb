require "polyamorous/version"

if defined?(::ActiveRecord)
  module Polyamorous
    if defined?(Arel::InnerJoin)
      InnerJoin = Arel::InnerJoin
      OuterJoin = Arel::OuterJoin
    else
      InnerJoin = Arel::Nodes::InnerJoin
      OuterJoin = Arel::Nodes::OuterJoin
    end

    if defined?(::ActiveRecord::Associations::JoinDependency)
      JoinDependency  = ::ActiveRecord::Associations::JoinDependency
      JoinAssociation = ::ActiveRecord::Associations::JoinDependency::JoinAssociation
      JoinBase = ::ActiveRecord::Associations::JoinDependency::JoinBase
    else
      JoinDependency  = ::ActiveRecord::Associations::ClassMethods::JoinDependency
      JoinAssociation = ::ActiveRecord::Associations::ClassMethods::JoinDependency::JoinAssociation
      JoinBase = ::ActiveRecord::Associations::ClassMethods::JoinDependency::JoinBase
    end
  end

  require 'polyamorous/tree_node'
  require 'polyamorous/join'

  if ActiveRecord::VERSION::STRING >= "4.2"
    require 'polyamorous/activerecord_4.1/join_association'
    require 'polyamorous/activerecord_4.2/join_dependency'
  elsif ActiveRecord::VERSION::STRING >= "4.1"
    require 'polyamorous/activerecord_4.1/join_association'
    require 'polyamorous/activerecord_4.1/join_dependency'
  else
    require 'polyamorous/activerecord_3_and_4.0/join_association'
    require 'polyamorous/activerecord_3_and_4.0/join_dependency'
  end

  Polyamorous::JoinDependency.send(:include, Polyamorous::JoinDependencyExtensions)
  Polyamorous::JoinAssociation.send(:include, Polyamorous::JoinAssociationExtensions)
  Polyamorous::JoinBase.class_eval do
    if method_defined?(:active_record)
      alias_method :base_klass, :active_record
    end
  end
end
