class Role < ActiveRecord::Base
  resourcify
  has_and_belongs_to_many :admin_users, :join_table => :admin_users_roles
  belongs_to :resource, :polymorphic => true

  scopify
end
