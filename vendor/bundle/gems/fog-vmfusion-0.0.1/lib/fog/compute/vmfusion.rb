module Fog
  module Compute
    class Vmfusion < Fog::Service
      autoload :Server, 'fog/compute/vmfusion/server'
      autoload :Servers, 'fog/compute/vmfusion/servers'

      model_path 'fog/compute/vmfusion'

      model       :server
      collection  :servers

      class Mock
        def initialize(_options = {})
          Fog::Mock.not_implemented
        end
      end

      class Real
        def initialize(_options = {})
          require 'fission'
        rescue LoadError => e
          retry if require('rubygems')
          raise e.message
        end
      end
    end
  end
end
