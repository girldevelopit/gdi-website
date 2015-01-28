require 'fog/terremark/version'
require 'fog/core'
require 'fog/xml'

module Fog
  module Terremark
    autoload :Vcloud, 'fog/terremark/vcloud'
  end

  module Compute
    autoload :Terremark, 'fog/compute/terremark'
  end

  module Parsers
    autoload :Terremark, 'fog/parsers/terremark'
  end
end
