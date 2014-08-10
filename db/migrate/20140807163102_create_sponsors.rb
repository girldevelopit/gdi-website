class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :url
      t.string :image_url
      t.integer :location_id

      t.timestamps
    end
  end
end
