class Location < ActiveRecord::Base
  resourcify
  has_many :admin_users
  has_many :sponsors
end
