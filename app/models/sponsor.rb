class Sponsor < ActiveRecord::Base
  resourcify
  belongs_to :location
  mount_uploader :image, ImageUploader
end
