class Bio < ActiveRecord::Base
  resourcify
  belongs_to :admin_user
  belongs_to :location

  mount_uploader :image, ImageUploader
end
