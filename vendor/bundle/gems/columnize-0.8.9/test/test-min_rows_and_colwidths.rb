#!/usr/bin/env ruby
require 'test/unit'

# Test of Columnize#min_rows_and_colwidths
class TestComputeRowsAndColwidths < Test::Unit::TestCase
  # Ruby 1.8 form of require_relative
  TOP_SRC_DIR = File.join(File.expand_path(File.dirname(__FILE__)), '..', 'lib')
  require File.join(TOP_SRC_DIR, 'columnize.rb')

  VOPTS = Columnize::DEFAULT_OPTS.merge(:displaywidth => 80)
  HOPTS = VOPTS.merge(:arrange_vertical => false)

  def min_rows_and_colwidths(list, opts)
    Columnize::Columnizer.new(list, opts).min_rows_and_colwidths
  end

  def test_colwidths
     data = ["one",      "two",         "three",
            "four",      "five",        "six",
            "seven",     "eight",       "nine",
            "ten",       "eleven",      "twelve",
            "thirteen",  "fourteen",    "fifteen",
            "sixteen",   "seventeen",   "eightteen",
            "nineteen",  "twenty",      "twentyone",
            "twentytwo", "twentythree", "twentyfour",
            "twentyfive","twentysix",   "twentyseven"]

    [['horizontal', HOPTS, [10, 9, 11, 9, 11, 10], 5, 6],
     ['vertical'  , VOPTS, [5, 5, 6, 8, 9, 11, 11], 4, 7]].each do
      |direction, opts, expect_colwidths, expect_rows, expect_cols|
      rows, colwidths = min_rows_and_colwidths(data, opts)
      assert_equal(expect_colwidths, colwidths, "colwidths - #{direction}")
      assert_equal(expect_rows, rows.length,
                   "number of rows - #{direction}")
      assert_equal(expect_cols, rows.first.length,
                 "number of cols - #{direction}")
    end
  end

  def test_horizontal_vs_vertical
    data = (0..54).map{|i| i.to_s}

    [['horizontal', HOPTS.merge(:displaywidth => 39), [2,2,2,2,2,2,2,2,2,2]],
     ['vertical'  , VOPTS.merge(:displaywidth => 39), [1,2,2,2,2,2,2,2,2,2]]].each do
      |direction, opts, expect|
      rows, colwidths = min_rows_and_colwidths(data, opts)
      assert_equal(expect, colwidths, "colwidths #{direction}")
      assert_equal(6, rows.length, "number of rows - #{direction}")
      assert_equal(10, rows.first.length, "number of cols - #{direction}")
    end
  end

  def test_displaywidth_smaller_than_largest_atom
    data = ['a' * 100, 'b', 'c', 'd', 'e']

    [['horizontal', HOPTS],
     ['vertical'  , VOPTS]].each do
      |direction, opts|
       rows, colwidths = min_rows_and_colwidths(data, opts)
       assert_equal([100], colwidths, "colwidths #{direction}")
       assert_equal(5, rows.length, "number of rows - #{direction}")
       assert_equal(1, rows.first.length, "number of cols - #{direction}")
     end
  end
end
