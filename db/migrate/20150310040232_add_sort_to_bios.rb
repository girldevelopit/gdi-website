class AddSortToBios < ActiveRecord::Migration
  def change
    add_column :bios, :sort_order, :int, :default => 1
  end
end
