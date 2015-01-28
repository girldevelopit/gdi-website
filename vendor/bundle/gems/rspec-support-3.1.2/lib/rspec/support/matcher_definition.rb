module RSpec
  module Support
    # @private
    def self.matcher_definitions
      @matcher_definitions ||= []
    end

    # Used internally to break cyclic dependency between mocks, expectations,
    # and support. We don't currently have a consistent implementation of our
    # matchers, though we are considering changing that:
    # https://github.com/rspec/rspec-mocks/issues/513
    #
    # @private
    def self.register_matcher_definition(&block)
      matcher_definitions << block
    end

    # Remove a previously registered matcher. Useful for cleaning up after
    # yourself in specs.
    #
    # @private
    def self.deregister_matcher_definition(&block)
      matcher_definitions.delete(block)
    end

    # @private
    def self.is_a_matcher?(object)
      matcher_definitions.any? { |md| md.call(object) }
    end
  end
end
