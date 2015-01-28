require 'fog/core'
require 'fog/vmfusion/version'

module Fog
  module Vmfusion
    extend Fog::Provider

    service(:compute, 'Compute')
  end

  module Compute
    autoload :Vmfusion, 'fog/compute/vmfusion'
  end
end
