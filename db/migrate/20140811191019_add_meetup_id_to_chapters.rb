class AddMeetupIdToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :meetup_id, :string
  end
end
