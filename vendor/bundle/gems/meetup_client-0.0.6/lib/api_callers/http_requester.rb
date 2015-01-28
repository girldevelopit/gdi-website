require 'net/http'

module ApiCallers
  class HttpRequester
    def initialize(requester)
      @requester = requester
    end

    def execute_request
      @requester.make_request
    end
  end
end