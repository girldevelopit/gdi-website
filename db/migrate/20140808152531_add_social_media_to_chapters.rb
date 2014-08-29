class AddSocialMediaToChapters < ActiveRecord::Migration
  def change
    change_table :chapters do |t|
      t.string :twitter
      t.string :linkedin
      t.string :github
    end
  end
end
