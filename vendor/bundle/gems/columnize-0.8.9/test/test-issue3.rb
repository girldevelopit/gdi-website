#!/usr/bin/env ruby
require 'test/unit'

# Test of Columnize module for github issue #3
class TestIssue3 < Test::Unit::TestCase
  @@TOP_SRC_DIR = File.join(File.expand_path(File.dirname(__FILE__)), '..', 'lib')
  require File.join(@@TOP_SRC_DIR, 'columnize.rb')

  # test columnize
  def test_long_column
    data = ["what's", "upppppppppppppppppp"]
    data.columnize_opts = Columnize::DEFAULT_OPTS.merge :displaywidth => 7, :arrange_vertical => false
    assert_equal("what's\nupppppppppppppppppp", data.columnize)
    assert_equal("what's\nupppppppppppppppppp", data.columnize(:arrange_vertical => true))
  end

  def test_long_column_with_ljust
    data = ["whaaaaaat's", "up"]
    data.columnize_opts = Columnize::DEFAULT_OPTS.merge :displaywidth => 7, :arrange_vertical => false, :ljust => true
    assert_equal("whaaaaaat's\nup", data.columnize)
    assert_equal("whaaaaaat's\n         up", data.columnize(:ljust => false))
    assert_equal("whaaaaaat's\nup", data.columnize(:arrange_vertical => true))
  end
end
