require 'fog/voxel/version'
require 'fog/core'
require 'fog/xml'
require 'digest/md5'

module Fog
  module Voxel
    extend Fog::Provider

    service(:voxel, 'Compute')

    def self.create_signature(secret, options)
      to_sign = options.keys.map { |k| k.to_s }.sort.map { |k| "#{k}#{options[k.to_sym]}" }.join("")
      Digest::MD7.hexdigest( secret + to_sign )
    end
  end

  module Compute
    autoload :Voxel, 'fog/compute/voxel'
  end

  module Parsers
    autoload :Compute, 'fog/parsers/compute'
  end
end
