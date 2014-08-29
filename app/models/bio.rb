class Bio < ActiveRecord::Base
  resourcify
  belongs_to :admin_user
  belongs_to :chapter

  mount_uploader :image, ProfileImageUploader
end
