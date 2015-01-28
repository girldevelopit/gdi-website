#!/usr/bin/env ruby
require 'test/unit'

# Test of Columnizer class
class TestColumnizer < Test::Unit::TestCase
  TOP_SRC_DIR = File.join(File.expand_path(File.dirname(__FILE__)), '..', 'lib')
  require File.join(TOP_SRC_DIR, 'columnize.rb')

  Columnize::Columnizer.class_eval 'attr_reader :stringify, :short_circuit, :term_adjuster'
  Columnize::Columnizer.class_eval 'attr_reader *ATTRS'

  # SETTING OPTS IN INITIALIZE
  def test_passed_in_opts
    # passed in opts should be merged with DEFAULT_OPTS
    c = Columnize::Columnizer.new([], :displaywidth => 15)
    assert_equal false, c.opts[:term_adjust], 'term_adjust comes from DEFAULT_OPTS'
    assert_equal 15, c.opts[:displaywidth], 'displaywidth should override DEFAULT_OPTS'
  end

  def test_ljust_attr
    c = Columnize::Columnizer.new([1,2,3], {:ljust => :auto})
    assert_equal false, c.ljust, 'ljust: :auto should transform to false when all values are numeric'
    c = Columnize::Columnizer.new(['1', 2, 3], {:ljust => :auto})
    assert_equal true, c.ljust, 'ljust: :auto should transform to true when not all values are numeric'
    c = Columnize::Columnizer.new([], {:ljust => false})
    assert_equal false, c.ljust, 'ljust: false should stay false'
    c = Columnize::Columnizer.new([], {:ljust => true})
    assert_equal true, c.ljust, 'ljust: true should stay true'
  end

  def test_stringify_attr
    c = Columnize::Columnizer.new
    assert_equal '1.0', c.stringify[1.0], 'without colfmt, should be to_s'
    c.update_opts :colfmt => '%02d'
    assert_equal '01', c.stringify[1.0], 'without colfmt, should be to_s'
  end

  def test_short_circuit_attr
    c = Columnize::Columnizer.new
    assert_equal "<empty>\n", c.short_circuit, 'should explicitly state when empty'
    c.list = 1
    assert_equal '', c.short_circuit, 'should be an empty string when not an array'
    c.list = [1]
    assert_equal nil, c.short_circuit, 'should be nil when list is good'
  end

  def test_term_adjuster_attr
    c = Columnize::Columnizer.new
    assert_equal 'abc', c.term_adjuster['abc']
    assert_equal "\e[0;31mObject\e[0;4m", c.term_adjuster["\e[0;31mObject\e[0;4m"]
    c.update_opts :term_adjust => true
    assert_equal 'abc', c.term_adjuster['abc']
    assert_equal 'Object', c.term_adjuster["\e[0;31mObject\e[0;4m"]
  end

  def test_displaywidth_attr
    c = Columnize::Columnizer.new [], :displaywidth => 10, :line_prefix => '        '
    assert_equal 12, c.displaywidth, 'displaywidth within 4 of line_prefix.length'
    c.update_opts :line_prefix => '  '
    assert_equal 8, c.displaywidth, 'displaywidth not within 4 of line_prefix.length'
  end

  # COLUMNIZE
  def test_columnize_with_short_circuit
    msg = 'Johnny 5 is alive!'
    c = Columnize::Columnizer.new
    c.instance_variable_set(:@short_circuit, msg)
    assert_equal msg, c.columnize, 'columnize should return short_circuit message if set'
  end

  def test_columnize_applies_ljust
    c = Columnize::Columnizer.new [1,2,3,10,20,30], :displaywidth => 10, :ljust => false, :arrange_vertical => false
    assert_equal " 1   2   3\n10  20  30", c.columnize, "ljust: #{c.ljust}"
    c.update_opts :ljust => true
    assert_equal "1   2   3 \n10  20  30", c.columnize, "ljust: #{c.ljust}"
  end

  def no_test_columnize_applies_colsep_and_prefix_and_suffix
    c = Columnize::Columnizer.new [1,2,3]
    assert_equal "1  2  3", c.columnize
    c.update_opts :line_prefix => '>', :colsep => '-', :line_suffix => '<'
    assert_equal ">1-2-3<", c.columnize
  end

  def test_columnize_applies_array_prefix_and_suffix
    c = Columnize::Columnizer.new [1,2,3]
    assert_equal "1  2  3", c.columnize
    c.update_opts :array_prefix => '>', :array_suffix => '<'
    assert_equal ">1  2  3<", c.columnize
  end

  # NOTE: min_rows_and_colwidths tested in test-min_rows_and_colwidths.rb

  # arrange_rows_and_cols
  def test_arrange_rows_and_cols
    rows = Columnize::Columnizer.new.arrange_by_row((1..9).to_a, 3, 3)
    assert_equal [[1,2,3],[4,5,6],[7,8,9]], rows, 'rows for (1..9), 3, 3'

    cols = Columnize::Columnizer.new.arrange_by_column((1..9).to_a, 3, 3)
    assert_equal [[1,4,7],[2,5,8],[3,6,9]], cols, 'cols for (1..9), 3, 3'

    rows = Columnize::Columnizer.new.arrange_by_row((1..5).to_a, 3, 2)
    assert_equal [[1,2],[3,4],[5]], rows, 'rows for (1..5, 2, 3)'

    cols = Columnize::Columnizer.new.arrange_by_column((1..5).to_a, 3, 2)
    assert_equal [[1,3,5],[2,4]],   cols, 'cols for (1..5, 2, 3)'
  end

  def test_set_attrs_from_opts
    assert(true, 'test set_attrs_from_opts')
  end
end
