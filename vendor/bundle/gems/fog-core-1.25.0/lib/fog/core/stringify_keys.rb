module Fog
  module StringifyKeys
    # Returns a new hash with all keys converted to strings.
    def self.stringify(hash)
      transform_hash(hash) do |hash, key, value|
        hash[key.to_s] = value
      end
    end

    private

    # http://devblog.avdi.org/2009/11/20/hash-transforms-in-ruby/
    def self.transform_hash(original, options = {}, &block)
      original.reduce({}) do |result, (key, value)|
        value = if options[:deep] && Hash === value
                  transform_hash(value, options, &block)
                else
                  value
                end
        block.call(result, key, value)
        result
      end
    end
  end
end
