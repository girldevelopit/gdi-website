class AddAdminUserToBio < ActiveRecord::Migration
  def change
    add_column :bios, :admin_user_id, :integer
  end
end
