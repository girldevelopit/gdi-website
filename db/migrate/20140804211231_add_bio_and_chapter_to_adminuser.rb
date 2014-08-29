class AddBioAndChapterToAdminuser < ActiveRecord::Migration
  def change
    add_column :admin_users, :bio_id, :integer
    add_column :admin_users, :chapter_id, :integer
  end
end
