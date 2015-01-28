#!/usr/bin/env ruby
require 'test/unit'

# Test of Columnize module
class TestHashFormat < Test::Unit::TestCase
  TOP_SRC_DIR = File.join(File.expand_path(File.dirname(__FILE__)), '..', 'lib')
  require File.join(TOP_SRC_DIR, 'columnize.rb')

  def test_parse_columnize_options
    assert Columnize.parse_columnize_options([{}]).kind_of?(Hash)
    assert_equal 90, Columnize.parse_columnize_options([90])[:displaywidth]
    opts = Columnize.parse_columnize_options([70, '|'])
    assert_equal 70, opts[:displaywidth]
    assert_equal '|', opts[:colsep]
  end

  def test_new_hash
    hash = {:displaywidth => 40, :colsep => ', ', :term_adjust => true,}
    assert_equal(hash, Columnize.parse_columnize_options([hash]), "parse_columnize_options returns same hash it was passed")
  end

  def test_array
    data = (0..54).to_a
    expected = "[ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9,\n" +
               " 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,\n" +
               " 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,\n" +
               " 30, 31, 32, 33, 34, 35, 36, 37, 38, 39,\n" +
               " 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,\n" +
               " 50, 51, 52, 53, 54]"
    assert_equal(expected, Columnize.columnize(data, :arrange_array => true, :ljust => false, :displaywidth  => 39))
  end

  def test_justify
    data = (0..54).to_a
    expected = "[ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9,\n" +
               " 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,\n" +
               " 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,\n" +
               " 30, 31, 32, 33, 34, 35, 36, 37, 38, 39,\n" +
               " 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,\n" +
               " 50, 51, 52, 53, 54]"
    assert_equal(expected, Columnize.columnize(data, :arrange_array => true, :displaywidth  => 39))
  end
end
