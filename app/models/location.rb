class Location < ActiveRecord::Base
  extend FriendlyId
  friendly_id :location, use: [:slugged, :history]

  resourcify
  has_many :admin_users
  has_many :sponsors
  has_many :bios

  geocoded_by :geo
  after_validation :geocode

  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geocoded = results.first
      obj.state = geocoded.state
    end
  end
  after_validation :reverse_geocode


end
