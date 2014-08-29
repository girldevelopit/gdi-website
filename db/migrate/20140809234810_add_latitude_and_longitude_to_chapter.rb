class AddLatitudeAndLongitudeToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :latitude, :float
    add_column :chapters, :longitude, :float
  end
end
