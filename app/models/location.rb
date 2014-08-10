class Location < ActiveRecord::Base
  resourcify
  has_many :admin_users
  has_many :sponsors

  geocoded_by :geo
  after_validation :geocode          # auto-fetch coordinates
end
