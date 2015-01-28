require 'meetup_client/configuration'
require 'meetup_api'

module MeetupClient
  class << self
    def configure(&block)
      yield @config ||= ::MeetupClient::Configuration.new
    end

    def config
      @config
    end
  end
end
