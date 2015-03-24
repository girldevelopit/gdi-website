class AddSortToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :sort_order, :int, :default => 1
  end
end
