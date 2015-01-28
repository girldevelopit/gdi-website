require "spec_helper"

describe "Fog#wait_for" do
  it "returns a Hash indicating the wait duration if successful" do
    assert_equal({ :duration => 0 }, Fog.wait_for(1) { true })
  end

  it "raises if the wait timeout is exceeded" do
    assert_raises(Fog::Errors::TimeoutError) do
      Fog.wait_for(2) { false }
    end
  end

  it "accepts a proc to determine the sleep interval" do
    i = 0
    ret = Fog.wait_for(1, lambda { |_t| 1 }) do
      i += 1
      i > 1
    end
    assert_equal({ :duration => 1 }, ret)
  end
end
