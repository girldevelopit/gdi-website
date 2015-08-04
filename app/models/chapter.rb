class Chapter < ActiveRecord::Base
  extend FriendlyId
  friendly_id :chapter, use: [:slugged, :history]

  validates :geo, :chapter, presence: true

  resourcify
  has_many :admin_users
  has_many :sponsors
  has_many :bios

  geocoded_by :geo
  after_validation :geocode
  after_validation :geocode, :if => :geo_changed?

  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geocoded = results.first
      obj.state = geocoded.state
    end
  end

  after_validation :reverse_geocode
  
end
