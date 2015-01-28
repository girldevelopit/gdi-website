module Columnize
  computed_displaywidth = (ENV['COLUMNS'] || '80').to_i
  computed_displaywidth = 80 unless computed_displaywidth >= 10

  # When an option is not specified for the below keys, these are the defaults.
  DEFAULT_OPTS = {
    :arrange_array     => false,
    :arrange_vertical  => true,
    :array_prefix      => '',
    :array_suffix      => '',
    :colfmt            => nil,
    :colsep            => '  ',
    :displaywidth      => computed_displaywidth,
    :line_prefix        => '',
    :line_suffix        => '',
    :ljust             => :auto,
    :term_adjust       => false
  }

  # Options parsing routine for Columnize::columnize. In the preferred
  # newer style, +args+ is a hash where each key is one of the option names.
  #
  # In the older style positional arguments are used and the positions
  # are in the order: +displaywidth+, +colsep+, +arrange_vertical+,
  # +ljust+, and +line_prefix+.
  def self.parse_columnize_options(args)
    if 1 == args.size && args[0].kind_of?(Hash) # explicitly passed as a hash
      args[0]
    elsif !args.empty? # passed as ugly positional parameters.
      Hash[args.zip([:displaywidth, :colsep, :arrange_vertical, :ljust, :line_prefix]).map(&:reverse)]
    else
      {}
    end
  end
end
