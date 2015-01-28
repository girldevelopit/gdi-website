module Fog
  module Compute
    class Terremark
      class Real
        include Common

        def initialize(options = {})
          @terremark_username     = options[:terremark_vcloud_username]
          @terremark_password     = options[:terremark_vcloud_password]
        end

        private

        def auth_token
          response = @connection.request({
                                             :expects   => 200,
                                             :headers   => {
                                                 'Authorization' => "Basic #{Base64.encode64("#{@terremark_username}:#{@terremark_password}").chomp!}",
                                                 'Content-Type'  => "application/vnd.vmware.vcloud.orgList+xml"
                                             },
                                             :host      => @host,
                                             :method    => 'POST',
                                             :parser    => Fog::Parsers::Terremark::GetOrganizations.new,
                                             :path      => "#{@path}/login"
                                         })
          response.headers['Set-Cookie']
        end

        def reload
          @connection.reset
        end

        def request(params)
          unless @cookie
            @cookie = auth_token
          end
          begin
            do_request(params)
          rescue Excon::Errors::Unauthorized
            @cookie = auth_token
            do_request(params)
          end
        end

        def do_request(params)
          headers = {}
          if @cookie
            headers.merge!('Cookie' => @cookie)
          end
          if params[:path]
            if params[:override_path] == true
              path = params[:path]
            else
              path = "#{@path}/#{params[:path]}"
            end
          else
            path = "#{@path}"
          end
          @connection.request({
                                  :body     => params[:body],
                                  :expects  => params[:expects],
                                  :headers  => headers.merge!(params[:headers] || {}),
                                  :host     => @host,
                                  :method   => params[:method],
                                  :parser   => params[:parser],
                                  :path     => path
                              })
        end
      end
    end
  end
end