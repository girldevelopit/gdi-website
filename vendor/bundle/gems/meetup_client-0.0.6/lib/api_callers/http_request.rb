module ApiCallers
  class HttpRequest
    CHARSET = 'UTF-8'

    def initialize(uri, method = 'get')
      @in_uri = uri
      @method = method
    end

    def make_request
      uri = URI.parse(@in_uri)
      http = Net::HTTP.new(uri.host, uri.port)
      response = http.request(class_to_call.new(uri.request_uri, headers))
      format_response(response.body)
    end

    def format_response(response_body); response_body; end;

    private

    def headers
      { 'Accept-Charset' => CHARSET }
    end

    def class_to_call
      "Net::HTTP::#{@method.capitalize}".constantize
    end

  end
end