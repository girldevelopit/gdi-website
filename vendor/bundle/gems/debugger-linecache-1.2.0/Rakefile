# -*- Ruby -*-

require 'rubygems/package_task'
require 'rake/testtask'

desc "Test everything."
test_task = task :test => :lib do
  Rake::TestTask.new(:test) do |t|
    # TODO: fix test-lnum
    t.test_files = Dir['test/test-*.rb'] - ['test/test-lnum.rb']
    t.verbose = true
  end
end

desc "Test everything - same as test."
task :check => :test

base_spec = eval(File.read('debugger-linecache.gemspec'), binding, 'debugger-linecache.gemspec')

Gem::PackageTask.new(base_spec) do |pkg|
  pkg.need_tar = true
end

desc "Remove built files"
task :clean => [:clobber_package] do
end

task :default => [:test]
