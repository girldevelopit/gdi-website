require "fog/xml/version"
require "nokogiri"

module Fog
  autoload :ToHashDocument, "fog/to_hash_document"

  module XML
    autoload :SAXParserConnection, "fog/xml/sax_parser_connection"
    autoload :Connection, "fog/xml/connection"
  end

  module Parsers
    autoload :Base, "fog/parsers/base"
  end
end
