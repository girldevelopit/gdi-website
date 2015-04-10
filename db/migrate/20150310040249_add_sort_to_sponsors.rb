class AddSortToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :sort_order, :int, :default => 1
  end
end
