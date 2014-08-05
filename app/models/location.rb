class Location < ActiveRecord::Base
  has_many :admin_users
end
