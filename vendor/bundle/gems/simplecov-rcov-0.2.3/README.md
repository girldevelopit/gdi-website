# SimpleCov Rcov Formatter gem

Is a Rcov style formatter for the ruby 1.9+ coverage gem: [SimpleCov](http://github.com/colszowka/simplecov).

The target of this formatter is to cheat on **Hudson** so I can use the [Ruby metrics plugin](http://github.com/hudson/rubymetrics-plugin) with **SimpleCov**.

So if you are looking some kind of workaround to integrate **SimpleCov** with your **Hudson** + **Ruby metrics plugin** this is a beginning.

## Install

    $ [sudo] gem install simplecov-rcov

## Usage

    require 'simplecov-rcov'
    SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter

Or if you want to share this formatter with another formatter like *HTML formatter* you can add both:

    require 'simplecov'
    require 'simplecov-rcov'
    class SimpleCov::Formatter::MergedFormatter
      def format(result)
         SimpleCov::Formatter::HTMLFormatter.new.format(result)
         SimpleCov::Formatter::RcovFormatter.new.format(result)
      end
    end
    SimpleCov.formatter = SimpleCov::Formatter::MergedFormatter

You can also add a flag support so if you don't run the tests activating the *COVERAGE* environment variable to *on* the coverage report won't be used:

    if( ENV['COVERAGE'] == 'on' )
      require 'simplecov'
      require 'simplecov-rcov'
      class SimpleCov::Formatter::MergedFormatter
        def format(result)
           SimpleCov::Formatter::HTMLFormatter.new.format(result)
           SimpleCov::Formatter::RcovFormatter.new.format(result)
        end
      end
      SimpleCov.formatter = SimpleCov::Formatter::MergedFormatter
      SimpleCov.start 'rails' do
        add_filter "/vendor/"
      end
    end

Run it using this:

    $ COVERAGE=on rake test

## ISSUES

To add the gem to the **Gemfile** try to do it this way:

    gem 'simplecov', :require => false
    gem 'simplecov-rcov', :require => false

And require the gems just before use the *SimpleCov* constant, like in the examples above.

If not could be *Uninitialized constant SimpleCov* issues.

## Credits

* Author: [Fernando Guillen](http://fernandoguillen.info)
* Contributors: [Wes Morgan](http://github.com/cap10morgan), [Wandenberg Peixoto](http://github.com/wandenberg)
* Copyright: Copyright (c) 2010 Fernando Guillen
* License: Released under the MIT license.
