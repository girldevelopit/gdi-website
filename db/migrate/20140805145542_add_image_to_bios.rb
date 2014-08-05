class AddImageToBios < ActiveRecord::Migration
  def change
    add_column :bios, :image, :string
  end
end
