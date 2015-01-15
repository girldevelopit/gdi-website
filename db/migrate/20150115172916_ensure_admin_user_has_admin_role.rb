class EnsureAdminUserHasAdminRole < ActiveRecord::Migration
  def change
    admin_user = AdminUser.where(email: "julia@girldevelopit.com")
    admin_role = Role.where(name: "admin").first
    admin_role.admin_users << admin_user

  end
end
