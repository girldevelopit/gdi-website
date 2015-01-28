# Module to format an Array into a single string with embedded
# newlines, On printing the string, the columns are aligned.
#
# == Summary
#
#  Return a string from an array with embedded newlines formatted so
#  that when printed the columns are aligned.
#  See below for examples and options to the main method +columnize+.
#
#
# == License
#
# Columnize is copyright (C) 2007-2011, 2013 Rocky Bernstein
# <rockyb@rubyforge.net>
#
# All rights reserved.  You can redistribute and/or modify it under
# the same terms as Ruby.
#
# Also available in Python (columnize), and Perl (Array::Columnize)

module Columnize
  # Pull in the rest of my pieces
  ROOT_DIR = File.dirname(__FILE__)
  %w(opts columnize version).each do |submod|
    require File.join %W(#{ROOT_DIR} columnize #{submod})
  end

  # Add +columnize_opts+ instance variable to classes that mix in this module. The type should be a kind of hash in file +columnize/opts+.
  attr_accessor :columnize_opts

  #  Columnize.columize([args]) => String
  #
  #  Return a string from an array with embedded newlines formatted so
  #  that when printed the columns are aligned.
  #
  #  For example, for a line width of 4 characters (arranged vertically):
  #      a = (1..4).to_a
  #      Columnize.columnize(a) => '1  3\n2  4\n'
  #
  #  Alternatively:
  #      a.columnize => '1  3\n2  4\n'
  #
  #  Arranged horizontally:
  #      a.columnize(:arrange_vertical => false) =>
  #        ['1', '2,', '3', '4'] => '1  2\n3  4\n'
  #
  #  Formatted as an array using format specifier '%02d':
  #      puts (1..10).to_a.columnize(:arrange_array => true, :colfmt => '%02d',
  #                                  :displaywidth => 10) =>
  #      [01, 02,
  #       03, 04,
  #       05, 06,
  #       07, 08,
  #       09, 10,
  #      ]
  #
  # Each column is only as wide as necessary.  By default, columns are
  # separated by two spaces. Options are available for setting
  # * the line display width
  # * a column separator
  # * a line prefix
  # * a line suffix
  # * A format specify for formatting each item each array item to a string
  # * whether to ignore terminal codes in text size calculation
  # * whether to left justify text instead of right justify
  # * whether to format as an array - with surrounding [] and
  #   separating ', '
  def self.columnize(*args)
    list = args.shift
    opts = parse_columnize_options(args)
    Columnizer.new(list, opts).columnize
  end

  # Adds columnize_opts to the singleton level of included class
  def self.included(base)
    # screw class variables, we'll use an instance variable on the class singleton
    class << base
      attr_accessor :columnize_opts
    end
    base.columnize_opts = DEFAULT_OPTS.dup
  end

  def columnize(*args)
    return Columnize.columnize(*args) if args.length > 1
    opts = args.empty? ? {} : args.pop
    @columnize_opts ||= self.class.columnize_opts.dup
    @columnizer ||= Columnizer.new(self, @columnize_opts)
    # make sure that any changes to list or opts get passed to columnizer
    @columnizer.list = self unless @columnizer.list == self
    @columnizer.opts = @columnize_opts.merge(opts) unless @columnizer.opts == @columnize_opts and opts.empty?
    @columnizer.columnize
  end
end

# Mix Columnize into Array
Array.send :include, Columnize

# Demo this sucker
if __FILE__ == $0
  # include Columnize

  a = (1..80).to_a
  puts a.columnize :arrange_array => true
  puts '=' * 50

  b = (1..10).to_a
  puts b.columnize(:displaywidth => 10)

  puts '-' * 50
  puts b.columnize(:arrange_array => true, :colfmt => '%02d', :displaywidth => 10)

  [[4, 4], [4, 7], [100, 80]].each do |width, num|
    data = (1..num).map{|i| i }
    [[false, 'horizontal'], [true, 'vertical']].each do |bool, dir|
      puts "Width: #{width}, direction: #{dir}"
      print Columnize.columnize(data, :displaywidth => width, :colsep => '  ', :arrange_vertical => bool, :ljust => :auto)
      end
  end

  puts Columnize.columnize(5)
  puts Columnize.columnize([])
  puts Columnize.columnize(["a", 2, "c"], :displaywidth =>10, :colsep => ', ')
  puts Columnize.columnize(["oneitem"])
  puts Columnize.columnize(["one", "two", "three"])
  data = ["one",       "two",         "three",
          "for",       "five",        "six",
          "seven",     "eight",       "nine",
          "ten",       "eleven",      "twelve",
          "thirteen",  "fourteen",    "fifteen",
          "sixteen",   "seventeen",   "eightteen",
          "nineteen",  "twenty",      "twentyone",
          "twentytwo", "twentythree", "twentyfour",
          "twentyfive","twentysix",   "twentyseven"]

  puts Columnize.columnize(data)
  puts Columnize.columnize(data, 80, '  ', false)
end
