require 'api_callers/http_request'

module ApiCallers
  class JsonRequest < HttpRequest
    def format_response(response_body)
      ActiveSupport::JSON.decode(clean_response_body(response_body))
    end

    private

    def clean_response_body(response_body)
      ActionController::Base.helpers.strip_tags(response_body.gsub('\"','').force_encoding(CHARSET))
    end
  end
end
