# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  #storage :file
  storage :fog
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    # For Rails 3.1+ asset pipeline compatibility:
    # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))

    #{}"/images/fallback/" + [version_name, "default.png"].compact.join('_')
    'default_image.png' #rails will look at 'app/assets/images/default_image.png'
  end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :large_image do
    # returns a 150x150 image
    process :resize_to_fill => [150, 150]
  end
  version :medium_image do
    # returns a 50x50 image
    process :resize_to_fill => [50, 50]
  end
  version :small_image do
    # returns a 35x35 image
    process :resize_to_fill => [35, 35]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
