class Location < ActiveRecord::Base
  resourcify
  has_many :admin_users
end
