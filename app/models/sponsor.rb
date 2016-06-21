class Sponsor < ActiveRecord::Base
  resourcify
  belongs_to :chapter
  mount_uploader :image, SponsorImageUploader

  scope :active, -> { where(is_active: true) }
  
end
