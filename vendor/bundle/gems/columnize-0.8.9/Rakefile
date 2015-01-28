#!/usr/bin/env rake
# -*- Ruby -*-
require 'rubygems'
require 'fileutils'

ROOT_DIR = File.dirname(__FILE__)
Gemspec_filename = 'columnize.gemspec'
require File.join %W(#{ROOT_DIR} lib columnize version)

def gemspec
  @gemspec ||= eval(File.read(Gemspec_filename), binding, Gemspec_filename)
end

require 'rubygems/package_task'
desc "Build the gem"
task :package=>:gem
task :gem=>:gemspec do
  Dir.chdir(ROOT_DIR) do
    sh "gem build columnize.gemspec"
    FileUtils.mkdir_p 'pkg'
    FileUtils.mv gemspec.file_name, 'pkg'
  end
end

desc "Install the gem locally"
task :install => :gem do
  Dir.chdir(ROOT_DIR) do
    sh %{gem install --local pkg/#{gemspec.file_name}}
  end
end

require 'rake/testtask'
desc "Test everything."
Rake::TestTask.new(:test) do |t|
  t.libs << './lib'
  t.test_files = FileList['test/test-*.rb']
  t.verbose = true
end
task :test => :lib

desc "same as test"
task :check => :test

desc "same as test"
task :columnize => :test

desc 'Create a GNU-style ChangeLog via git2cl'
task :ChangeLog do
  system('git log --pretty --numstat --summary | git2cl > ChangeLog')
end

task :default => [:test]

desc 'Create a GNU-style ChangeLog via git2cl'
task :ChangeLog do
  system('git log --pretty --numstat --summary | git2cl > ChangeLog')
end

desc "Generate the gemspec"
task :generate do
  puts gemspec.to_ruby
end

desc "Validate the gemspec"
task :gemspec do
  gemspec.validate
end

# ---------  RDoc Documentation ------
require 'rdoc/task'
desc "Generate rdoc documentation"
Rake::RDocTask.new("rdoc") do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title    = "Columnize #{Columnize::VERSION} Documentation"

  # Make the README file the start page for the generated html
  rdoc.options += %w(--main README.md)

  rdoc.rdoc_files.include('lib/*.rb', 'README.md', 'COPYING')
end

desc "Same as rdoc"
task :doc => :rdoc

task :clobber_package do
  FileUtils.rm_rf File.join(ROOT_DIR, 'pkg')
end

task :clobber_rdoc do
  FileUtils.rm_rf File.join(ROOT_DIR, 'doc')
end

desc 'Remove residue from running patch'
task :rm_patch_residue do
  FileUtils.rm_rf Dir.glob('**/*.{rej,orig}'), :verbose => true
end

desc 'Remove ~ backup files'
task :rm_tilde_backups do
  FileUtils.rm_rf Dir.glob('**/*~'), :verbose => true
end

desc 'Remove built files'
task :clean => [:clobber_package, :clobber_rdoc, :rm_patch_residue,
                :rm_tilde_backups]
