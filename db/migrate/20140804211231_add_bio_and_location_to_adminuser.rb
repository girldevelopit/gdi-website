class AddBioAndLocationToAdminuser < ActiveRecord::Migration
  def change
    add_column :admin_users, :bio_id, :integer
    add_column :admin_users, :location_id, :integer
  end
end
