require "minitest/autorun"
require "fog/json"

class TestJSONEncoding < Minitest::Test
  def test_encode_with_valid_hash
    @hash = {
      "key" => "value",
      "array" => %W(one two three)
    }
    @expected = %q{{"key":"value","array":["one","two","three"]}}
    assert_equal @expected, Fog::JSON.encode(@hash)
  end

  def test_encode_with_bad_input
    assert_raises(Fog::JSON::EncodeError) { Fog::JSON.encode("\x82\xAC\xEF") }
  end
end
