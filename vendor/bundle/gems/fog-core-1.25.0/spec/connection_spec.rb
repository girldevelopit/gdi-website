require "spec_helper"

describe Fog::Core::Connection do
  it "raises ArgumentError when no arguments given" do
    assert_raises(ArgumentError) do
      Fog::Core::Connection.new
    end
  end

  [:request, :reset].each do |method|
    it "responds to #{method}" do
      connection = Fog::Core::Connection.new("http://example.com")
      assert connection.respond_to?(method)
    end
  end

  it "writes the Fog::Core::VERSION to the User-Agent header" do
    connection = Fog::Core::Connection.new("http://example.com")
    assert_equal "fog-core/#{Fog::Core::VERSION}",
                 connection.instance_variable_get(:@excon).data[:headers]["User-Agent"]
  end

  describe "when Fog is installed" do
    it "writes the Fog::VERSION to the User-Agent header" do
      Fog::VERSION = 'Version'
      connection = Fog::Core::Connection.new("http://example.com")
      assert_equal "fog/Version fog-core/#{Fog::Core::VERSION}",
                   connection.instance_variable_get(:@excon).data[:headers]["User-Agent"]
      Fog.send(:remove_const, :VERSION)
    end
  end

  it "doesn't error when persistence is enabled" do
    Fog::Core::Connection.new("http://example.com", true)
  end

  it "doesn't error when persistence is enabled and debug_response is disabled" do
    options = {
      :debug_response => false
    }
    Fog::Core::Connection.new("http://example.com", true, options)
  end

  describe ":path_prefix" do
    it "does not emit a warning when provided this argument in the initializer" do
      $stderr = StringIO.new

      Fog::Core::Connection.new("http://example.com", false, :path_prefix => "foo")

      assert_empty($stderr.string)
    end

    it "raises when the 'path' arg is present and this arg is supplied" do
      assert_raises(ArgumentError) do
        Fog::Core::Connection.new("http://example.com", false, :path_prefix => "foo", :path => "bar")
      end
    end
  end

  describe "#request" do
    describe "default behavior" do
      it "supplies the 'path' arg directly to Excon" do
        spy = Object.new
        spy.instance_eval do
          def params
            @params
          end
          def new(_, params)
            @params = params
          end
        end

        Object.stub_const("Excon", spy) do
          Fog::Core::Connection.new("http://example.com", false, :path => "bar")
          assert_equal("bar", spy.params[:path])
        end
      end
    end

    describe "with path_prefix supplied to the initializer" do
      let(:spy) do
        Object.new.tap do |spy|
          spy.instance_eval do
            def new(*_args); self; end
            def params; @params; end
            def request(params)
              @params = params
            end
          end
        end
      end

      it "uses the initializer-supplied :path_prefix arg with #request :arg to formulate a path to send to Excon.request" do
        Object.stub_const("Excon", spy) do
          c = Fog::Core::Connection.new("http://example.com", false, :path_prefix => "foo")
          c.request(:path => "bar")
          assert_equal("foo/bar", spy.params[:path])
        end
      end

      it "does not introduce consecutive '/'s into the path if 'path' starts with a '/'" do
        Object.stub_const("Excon", spy) do
          c = Fog::Core::Connection.new("http://example.com", false, :path_prefix => "foo")
          c.request(:path => "/bar")
          assert_equal("foo/bar", spy.params[:path])
        end
      end
    end
  end
end
