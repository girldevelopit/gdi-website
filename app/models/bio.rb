class Bio < ActiveRecord::Base
  resourcify
  belongs_to :admin_user
  mount_uploader :image, ImageUploader
end
