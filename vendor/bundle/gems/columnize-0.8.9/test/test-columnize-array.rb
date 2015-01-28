#!/usr/bin/env ruby
require 'test/unit'

# Test of Columnize module
class TestColumnizeArray < Test::Unit::TestCase
  # Ruby 1.8 form of require_relative
  TOP_SRC_DIR = File.join(File.expand_path(File.dirname(__FILE__)), '..', 'lib')
  ENV['COLUMNS'] = '80'
  require File.join(TOP_SRC_DIR, 'columnize.rb')

  # test columnize
  def test_arrange_array
    data = (1..80).to_a
    expect = "[ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,\n" +
             " 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,\n" +
             " 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,\n" +
             " 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80]"
    assert_equal(expect,
                 data.columnize(:arrange_array => true, :displaywidth => 80),
                 "columnize_opts -> arrange_array")
  end

  def test_displaywidth
    expect = "1  5   9\n" +
             "2  6  10\n" +
             "3  7\n" +
             "4  8"
    data = (1..10).to_a
    assert_equal(expect, data.columnize(:displaywidth => 10), "displaywidth")
  end

  def test_colfmt
    expect = "[01, 02,\n" +
             " 03, 04,\n" +
             " 05, 06,\n" +
             " 07, 08,\n" +
             " 09, 10]"
    data = (1..10).to_a
    assert_equal(expect, data.columnize(:arrange_array => true, :colfmt => '%02d', :displaywidth => 10), "arrange_array, colfmt, displaywidth")
  end

  def test_backwards_compatiblity
    foo = []
    data = (1..11).to_a
    expect = " 1   2  3\n 4   5  6\n 7   8  9\n10  11"
    assert_equal expect, foo.columnize(data, :displaywidth => 10, :arrange_vertical => false)
  end
end
