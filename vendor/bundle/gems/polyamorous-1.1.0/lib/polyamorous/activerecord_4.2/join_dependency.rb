require 'polyamorous/activerecord_4.1/join_dependency'

module Polyamorous
  module JoinDependencyExtensions
    def make_joins(parent, child)
      tables    = child.tables
      info      = make_constraints parent, child, tables, child.join_type || Arel::Nodes::InnerJoin

      [info] + child.children.flat_map { |c| make_joins(child, c) }
    end
  end
end
