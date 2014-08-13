class AddSocialMediaToBios < ActiveRecord::Migration
  def change
    change_table :bios do |t|
      t.string :twitter
      t.string :email
      t.string :website
      t.string :linkedin
      t.string :github
    end
  end
end
