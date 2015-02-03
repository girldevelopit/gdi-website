class Material < ActiveRecord::Base
  resourcify
  mount_uploader :icon, MaterialIconUploader
end
