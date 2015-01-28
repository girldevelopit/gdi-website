# Copyright (C) 2007-2011, 2013 Rocky Bernstein
# <rockyb@rubyforge.net>
#
# Part of Columnize to format in either direction
module Columnize
  class Columnizer
    ARRANGE_ARRAY_OPTS = {:array_prefix => '[', :line_prefix => ' ', :line_suffix => ',', :array_suffix => ']', :colsep => ', ', :arrange_vertical => false}
    OLD_AND_NEW_KEYS = {:lineprefix => :line_prefix, :linesuffix => :line_suffix}
    # TODO: change colfmt to cell_format; change colsep to something else
    ATTRS = [:arrange_vertical, :array_prefix, :array_suffix, :line_prefix, :line_suffix, :colfmt, :colsep, :displaywidth, :ljust]

    attr_reader :list, :opts

    def initialize(list=[], opts={})
      self.list = list
      self.opts = DEFAULT_OPTS.merge(opts)
    end

    def list=(list)
      @list = list
      if @list.is_a? Array
        @short_circuit = @list.empty? ? "<empty>\n" : nil
      else
        @short_circuit = ''
        @list = []
      end
    end

    # TODO: freeze @opts
    def opts=(opts)
      @opts = opts
      OLD_AND_NEW_KEYS.each {|old, new| @opts[new] = @opts.delete(old) if @opts.keys.include?(old) and !@opts.keys.include?(new) }
      @opts.merge!(ARRANGE_ARRAY_OPTS) if @opts[:arrange_array]
      set_attrs_from_opts
    end

    def update_opts(opts)
      self.opts = @opts.merge(opts)
    end

    def columnize
      return @short_circuit if @short_circuit

      rows, colwidths = min_rows_and_colwidths
      ncols = colwidths.length
      justify = lambda {|t, c|
          @ljust ? t.ljust(colwidths[c]) : t.rjust(colwidths[c])
      }
      textify = lambda do |row|
        row.map!.with_index(&justify) unless ncols == 1 && @ljust
        "#{@line_prefix}#{row.join(@colsep)}#{@line_suffix}"
      end

      text = rows.map(&textify)
      text.first.sub!(/^#{@line_prefix}/, @array_prefix) unless @array_prefix.empty?
      text.last.sub!(/#{@line_suffix}$/, @array_suffix) unless @array_suffix.empty?
      text.join("\n") # + "\n" # if we want extra separation
    end

    # TODO: make this a method, rather than a function (?)
    # compute the smallest number of rows and the max widths for each column
    def min_rows_and_colwidths
      list = @list.map &@stringify
      cell_widths = list.map(&@term_adjuster).map(&:size)

      # Set default arrangement: one atom per row
      cell_width_max = cell_widths.max
      result = [arrange_by_row(list, list.size, 1), [cell_width_max]]

      # If any atom > @displaywidth, stop and use one atom per row.
      return result if cell_width_max > @displaywidth

      # For horizontal arrangement, we want to *maximize* the number
      # of columns. Thus the candidate number of rows (+sizes+) starts
      # at the minumum number of rows, 1, and increases.

      # For vertical arrangement, we want to *minimize* the number of
      # rows. So here the candidate number of columns (+sizes+) starts
      # at the maximum number of columns, list.length, and
      # decreases. Also the roles of columns and rows are reversed
      # from horizontal arrangement.

      # Loop from most compact arrangement to least compact, stopping
      # at the first successful packing.  The below code is tricky,
      # but very cool.
      #
      # FIXME: In the below code could be DRY'd. (The duplication got
      # introduced when I revised the code - rocky)
      if @arrange_vertical
        (1..list.length).each do |size|
          other_size = (list.size + size - 1) / size
          colwidths = arrange_by_row(cell_widths, other_size, size).map(&:max)
          totwidth = colwidths.inject(&:+) + ((colwidths.length-1) * @colsep.length)
          return [arrange_by_column(list, other_size, size), colwidths] if
            totwidth <= @displaywidth
        end
      else
        list.length.downto(1).each do |size|
          other_size = (list.size + size - 1) / size
          colwidths = arrange_by_column(cell_widths, other_size, size).map(&:max)
          totwidth = colwidths.inject(&:+) + ((colwidths.length-1) * @colsep.length)
          return [arrange_by_row(list, other_size, size), colwidths] if
            totwidth <= @displaywidth
        end
      end
      result
    end

    # Given +list+, +ncols+, +nrows+, arrange the one-dimensional
    # array into a 2-dimensional lists of lists organized by rows.
    #
    # In either horizontal or vertical arrangement, we will need to
    # access this for the list data or for the width
    # information.
    #
    # Here is an example:
    # arrange_by_row((1..5).to_a, 3, 2) =>
    #    [[1,2], [3,4], [5]],
    def arrange_by_row(list, nrows, ncols)
      (0...nrows).map {|r| list[r*ncols, ncols] }.compact
    end

    # Given +list+, +ncols+, +nrows+, arrange the one-dimensional
    # array into a 2-dimensional lists of lists organized by columns.
    #
    # In either horizontal or vertical arrangement, we will need to
    # access this for the list data or for the width
    # information.
    #
    # Here is an example:
    # arrange_by_column((1..5).to_a, 2, 3) =>
    #    [[1,3,5], [2,4]]
    def arrange_by_column(list, nrows, ncols)
      (0...ncols).map do |i|
        (0..nrows-1).inject([]) do |row, j|
          k = i + (j * ncols)
          k < list.length ? row << list[k] : row
        end
      end
    end

    def set_attrs_from_opts
      ATTRS.each {|attr| self.instance_variable_set "@#{attr}", @opts[attr] }

      @ljust = !@list.all? {|datum| datum.kind_of?(Numeric)} if @ljust == :auto
      @displaywidth -= @line_prefix.length
      @displaywidth = @line_prefix.length + 4 if @displaywidth < 4
      @stringify = @colfmt ? lambda {|li| @colfmt % li } : lambda {|li| li.to_s }
      @term_adjuster = @opts[:term_adjust] ? lambda {|c| c.gsub(/\e\[.*?m/, '') } : lambda {|c| c }
    end
  end
end

# Demo
if __FILE__ == $0
  Columnize::DEFAULT_OPTS = {:line_prefix => '', :displaywidth => 80}
  puts Columnize::Columnizer.new.arrange_by_row((1..5).to_a, 2, 3).inspect
  puts Columnize::Columnizer.new.arrange_by_column((1..5).to_a, 2, 3).inspect
end
