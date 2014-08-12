class AddEmailToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :email, :string
  end
end
