# coding: utf-8

module Fog
  module Network
    class SakuraCloud
      class Real
        def create_router(options)
          bandwidthmbps = options[:bandwidthmbps] ? options[:bandwidthmbps].to_i : 100

          body = {
            "Internet" => {
              "Name" => options[:name],
              "NetworkMaskLen"=> options[:networkmasklen].to_i,
              "BandWidthMbps"=> bandwidthmbps
            }
          }

          request(
            :headers => {
              'Authorization' => "Basic #{@auth_encord}"
            },
            :expects  => 202,
            :method => 'POST',
            :path => "#{Fog::SakuraCloud::SAKURACLOUD_API_ENDPOINT}/internet",
            :body => Fog::JSON.encode(body)
          )
        end
      end # Real

      class Mock
        def create_router(options)
          response = Excon::Response.new
          response.status = 202
          response.body = {
          }
          response
        end
      end
    end # SakuraCloud
  end # Network
end # Fog
