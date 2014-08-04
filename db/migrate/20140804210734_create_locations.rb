class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location
      t.text :blurb
      t.string :fb
      t.string :meetup
      t.string :geo

      t.timestamps
    end
  end
end
