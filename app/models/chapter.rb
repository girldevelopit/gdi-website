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

  #check that state field is set
  def is_state_null
    if self.state?
      return true
    else
      #otherwise, throw error under "address" field in AA
      errors.add(:geo, "Please enter a valid location (example: \"Los Angeles, CA, USA\")")
      return false
    end
  end

  #make sure we have a state after geocode process
  before_save :is_state_null

  after_validation :reverse_geocode
  
  scope :active, -> { where(is_active: true) }
  
end
