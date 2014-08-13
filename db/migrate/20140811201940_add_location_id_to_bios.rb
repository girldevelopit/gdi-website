class AddLocationIdToBios < ActiveRecord::Migration
  def change
    add_column :bios, :location_id, :integer
  end
end
