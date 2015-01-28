module Fog
  module Compute
    class Brightbox
      class Real
        # @param [String] identifier Unique reference to identify the resource
        #
        # @return [Hash] if successful Hash version of JSON object
        #
        # @see https://api.gb1.brightbox.com/1.0/#load_balancer_lock_resource_load_balancer
        #
        def lock_resource_load_balancer(identifier)
          return nil if identifier.nil? || identifier == ""
          wrapped_request("put", "/1.0/load_balancers/#{identifier}/lock_resource", [200])
        end
      end
    end
  end
end
