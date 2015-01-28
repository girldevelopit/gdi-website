module Fog
  module Compute
    class Brightbox
      class Real
        # Shuts down and resets the server without disconnecting the console.
        #
        # @param [String] identifier Unique reference to identify the resource
        #
        # @return [Hash] if successful Hash version of JSON object
        #
        # @see https://api.gb1.brightbox.com/1.0/#server_reboot_server
        #
        def reboot_server(identifier)
          return nil if identifier.nil? || identifier == ""
          wrapped_request("post", "/1.0/servers/#{identifier}/reboot", [202])
        end
      end
    end
  end
end
