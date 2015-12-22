class AddIsActiveToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :is_active, :integer, :default => 1
  end
end
