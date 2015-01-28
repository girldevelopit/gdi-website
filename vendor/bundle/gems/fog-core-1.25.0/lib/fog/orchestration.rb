module Fog
  module Orchestration
    def self.[](provider)
      new(:provider => provider)
    end

    def self.new(attributes)
      attributes = attributes.dup # Prevent delete from having side effects
      provider = attributes.delete(:provider).to_s.downcase.to_sym

      if providers.include?(provider)
        require "fog/#{provider}/network"
        return Fog::Orchestration.const_get(Fog.providers[provider]).new(attributes)
      end

      raise ArgumentError, "#{provider} has no orchestration service"
    end

    def self.providers
      Fog.services[:orchestration]
    end
  end
end
