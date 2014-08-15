# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick
  process :store_dimensions

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :resize_to_fit => [300, nil]
  process :crop => '300x300+0+0'

binding.pry

  version :thumb do
    process :resize_to_fit => [100, 150]
  end

  version :profile do
    process :resize_to_fit => [300, nil]
    process :crop => '200x200+0+0'
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

  private

  def store_dimensions
    if file && model
      model.width, model.height = ::MiniMagick::Image.open(file.file)[:dimensions]
    end
  end

  def crop(geometry)
  manipulate! do |img|
    img.crop(geometry)
    img
    end
  end
end
