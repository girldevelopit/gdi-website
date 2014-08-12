class Location < ActiveRecord::Base
  resourcify
  has_many :admin_users
  has_many :sponsors
  has_many :bios

  geocoded_by :geo
  after_validation :geocode
end
