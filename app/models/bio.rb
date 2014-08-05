class Bio < ActiveRecord::Base
  belongs_to :admin_user
  mount_uploader :image, ImageUploader
end
