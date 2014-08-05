class RemoveUserIdFromBio < ActiveRecord::Migration
  def change
    rename_column :bios, :user_id, :_user_id
  end
end
