# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :resize_to_fill => [300, 300]

  version :thumb do
    process :resize_to_fit => [100, 150]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def default_url
    size = case version_name
           when :thumb then "100x150"
           else "200x200"
           end
    "holder.js/#{size}/text:#{size}/social"
  end
end
