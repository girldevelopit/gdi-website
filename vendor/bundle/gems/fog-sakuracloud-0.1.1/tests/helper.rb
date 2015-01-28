## Initialize credentials
ENV['FOG_RC'] = ENV['FOG_RC'] || File.expand_path('../.fog', __FILE__)

## From fog-core
require 'fog/test_helpers/formats_helper'

## From fog submodule
require File.expand_path('../../fog/tests/helper', __FILE__)
helpers = Dir.glob(File.expand_path('../../', __FILE__) + '/fog/tests/helpers/**/*.rb')
helpers.map {|h| load h}

## SakuraCloud Helpers
def sakuracloud_volume_service
  Fog::Volume[:sakuracloud]
end

def sakuracloud_compute_service
  Fog::Compute[:sakuracloud]
end

def sakuracloud_network_service
  Fog::Network[:sakuracloud]
end
