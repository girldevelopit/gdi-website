class AddStateToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :state, :string
  end
end
