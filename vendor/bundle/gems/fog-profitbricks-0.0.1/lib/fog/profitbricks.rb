require "fog/core"
require "fog/xml"
require "fog/profitbricks/core"
require "fog/profitbricks/version"
require "fog/profitbricks/compute"
require "fog/profitbricks/parsers/base"

module Fog
  module ProfitBricks
    extend Fog::Provider
    service(:compute, "Compute")
  end
end
