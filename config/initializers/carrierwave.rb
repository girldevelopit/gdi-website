CarrierWave.configure do |config|
  config.permissions = 0666
  config.directory_permissions = 0777

  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => Rails.application.secrets.aws_access_key,
      :aws_secret_access_key  => Rails.application.secrets.aws_secret_key
  }

  if Rails.env.production?
    config.storage = :fog
    config.fog_directory = 'girl_develop_it'
  else
    config.storage = :file
  end
end
