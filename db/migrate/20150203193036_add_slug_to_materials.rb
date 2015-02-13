class AddSlugToMaterials < ActiveRecord::Migration
  def change
    add_index :materials, :slug
  end
end
