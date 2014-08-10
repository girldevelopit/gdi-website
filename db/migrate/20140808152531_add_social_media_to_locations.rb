class AddSocialMediaToLocations < ActiveRecord::Migration
  def change
    change_table :locations do |t|
      t.string :twitter
      t.string :linkedin
      t.string :github
    end
  end
end
