class Sponsor < ActiveRecord::Base
  resourcify
  belongs_to :chapter
  mount_uploader :image, SponsorImageUploader
end
