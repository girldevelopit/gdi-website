require 'rubygems'
require 'test/unit'
require 'mocha'
require 'simplecov'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'simplecov-rcov'

class Test::Unit::TestCase
end
