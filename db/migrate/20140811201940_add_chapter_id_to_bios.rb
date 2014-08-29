class AddChapterIdToBios < ActiveRecord::Migration
  def change
    add_column :bios, :chapter_id, :integer
  end
end
