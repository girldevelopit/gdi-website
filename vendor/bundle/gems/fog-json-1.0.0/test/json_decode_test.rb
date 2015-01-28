require "minitest/autorun"
require "fog/json"

class TestJSONDecoding < Minitest::Test
  def test_decode_with_valid_string
    @json = %q{{"key":"value", "array": ["one", "two", "three"]}}
    @expected = {
      "key" => "value",
      "array" => %W(one two three)
    }
    assert_equal @expected, Fog::JSON.decode(@json)
  end

  def test_decode_with_nil
    assert_raises(Fog::JSON::DecodeError) { Fog::JSON.decode(nil) }
  end
end
