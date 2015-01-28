module RailsServeStaticAssets
  class Railtie < Rails::Railtie
    config.before_initialize do
      ::Rails.configuration.serve_static_assets = true
      ::Rails.configuration.action_dispatch.x_sendfile_header = nil
    end
  end
end
