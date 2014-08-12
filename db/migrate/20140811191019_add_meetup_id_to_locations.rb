class AddMeetupIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :meetup_id, :string
  end
end
