== trollop

by William Morgan (http://masanjin.net/)

Main page: http://trollop.rubyforge.org

Release announcements and comments: http://masanjin.net/blog/label/trollop/.

Documentation quickstart: See Trollop.options and then Trollop::Parser#opt.
Also see the examples at http://trollop.rubyforge.org/.

== DESCRIPTION

Trollop is a commandline option parser for Ruby that just gets out of your way.
One line of code per option is all you need to write. For that, you get a nice
automatically-generated help page, robust option parsing, and sensible defaults
for everything you don't specify.

== FEATURES

- Dirt-simple usage.
- Single file. Throw it in lib/ if you don't want to make it a Rubygem dependency.
- Sensible defaults. No tweaking necessary, much tweaking possible.
- Support for long options, short options, subcommands, and automatic type validation and
  conversion.
- Automatic help message generation, wrapped to current screen width.

== REQUIREMENTS

* A burning desire to write less code.

== INSTALL

* gem install trollop

== SYNOPSIS

  require 'trollop'
  opts = Trollop::options do
    opt :monkey, "Use monkey mode"                    # flag --monkey, default false
    opt :name, "Monkey name", :type => :string        # string --name <s>, default nil
    opt :num_limbs, "Number of limbs", :default => 4  # integer --num-limbs <i>, default to 4
  end

  p opts # a hash: { :monkey=>false, :name=>nil, :num_limbs=>4, :help=>false }

== LICENSE

Copyright (c) 2008--2012 William Morgan. Trollop is distributed under the same
terms as Ruby.
