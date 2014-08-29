class AddSlugToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :slug, :string
    add_index :chapters, :slug
  end
end
