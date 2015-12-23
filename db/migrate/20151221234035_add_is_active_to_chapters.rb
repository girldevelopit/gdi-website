class AddIsActiveToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :is_active, :boolean, default: true
  end
end
