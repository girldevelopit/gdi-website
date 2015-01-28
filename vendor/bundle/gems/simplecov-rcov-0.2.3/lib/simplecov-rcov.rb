require 'erb'
require 'cgi'
require 'fileutils'
require 'time'
require 'pathname'

require File.expand_path( "#{File.dirname(__FILE__)}/simplecov-rcov/version.rb" )

unless defined?(SimpleCov)
  raise RuntimeError, "simplecov-rcov is a formatter for simplecov. Please update your test helper and gemfile to require 'simplecov'!"
end

class SimpleCov::Formatter::RcovFormatter
  UPSTREAM_URL = "https://github.com/fguillen/simplecov-rcov"

  def format( result )
    Dir[File.join(File.dirname(__FILE__), '../assets/*')].each do |path|
      FileUtils.cp_r(path, asset_output_path)
    end

    @path_relativizer = Hash.new{|h,base|
      h[base] = Pathname.new(base).cleanpath.to_s.gsub(%r{^\w:[/\\]}, "").gsub(/\./, "_").gsub(/[\\\/]/, "-") + ".html"
    }

    generated_on = Time.now

    @files = result.files

    @total_lines =  result.files.map { |e| e.lines.count }.inject(:+)
    @total_lines_code =  result.files.map { |e| e.covered_lines.count + e.missed_lines.count }.inject(:+)
    @total_coverage = coverage(result.files)
    @total_coverage_code = coverage_code(result.files)

    FileUtils.mkdir_p( SimpleCov::Formatter::RcovFormatter.output_path )

    write_file(template("index.html"), File.join(SimpleCov::Formatter::RcovFormatter.output_path, "/index.html") , binding)

    template = template("detail.html")
    result.files.each do |file|
      write_file(template, File.join(SimpleCov::Formatter::RcovFormatter.output_path, relative_filename(shortened_filename(file))), binding)
    end

    puts "Coverage report Rcov style generated for #{result.command_name} to #{SimpleCov::Formatter::RcovFormatter.output_path}"
  end

  private

  def write_file(template, output_filename, binding)
    rcov_result = template.result( binding )

    File.open( output_filename, "w" ) do |file_result|
     file_result.write rcov_result
    end
  end

  def template(name)
    ERB.new(File.read(File.join(File.dirname(__FILE__), '../views/', "#{name}.erb")), nil, '-')
  end

  def lines(file_list)
    return 0.0 if file_list.length == 0
    file_list.map { |e| e.lines.count }.inject(:+)
  end

  def lines_covered(file_list)
    return 0.0 if file_list.length == 0
    file_list.map {|f| f.covered_lines.count }.inject(&:+)
  end

  def lines_missed(file_list)
    return 0.0 if file_list.length == 0
    file_list.map {|f| f.missed_lines.count }.inject(&:+)
  end

  def lines_of_code(file_list)
    lines_missed(file_list) + lines_covered(file_list)
  end

  def coverage(file_list)
    return 100.0 if file_list.length == 0 or lines_of_code(file_list) == 0
    never_lines = file_list.map {|f| f.never_lines.count }.inject(&:+)

    (lines_covered(file_list) + never_lines) * 100 / lines(file_list).to_f
  end

  def coverage_code(file_list)
    return 100.0 if file_list.length == 0 or lines_of_code(file_list) == 0

    lines_covered(file_list) * 100 / lines_of_code(file_list).to_f
  end

  def self.output_path
    File.join( SimpleCov.coverage_path, "/rcov" )
  end

  def asset_output_path
    return @asset_output_path if @asset_output_path
    @asset_output_path = File.join(SimpleCov::Formatter::RcovFormatter.output_path, 'assets', SimpleCov::Formatter::RcovFormatter::VERSION)
    FileUtils.mkdir_p(@asset_output_path)
    @asset_output_path
  end

  def project_name
    SimpleCov.project_name
  end

  def assets_path(name)
    File.join('./assets', SimpleCov::Formatter::RcovFormatter::VERSION, name)
  end

  def code_coverage_html(code_coverage_percentage, is_total=false)
    %{<div class="percent_graph_legend"><tt class='#{ is_total ? 'coverage_total' : ''}'>#{ "%3.2f" % code_coverage_percentage }%</tt></div>
      <div class="percent_graph">
        <div class="covered" style="width:#{ code_coverage_percentage.round }px"></div>
        <div class="uncovered" style="width:#{ 100 - code_coverage_percentage.round }px"></div>
      </div>}
  end

  def total_coverage_for_report(file)
    return 100.0 if file.lines.count == 0
    (file.covered_lines.count + file.never_lines.count)  * 100 / file.lines.count.to_f
  end

  def coverage_threshold_classes(percentage)
    return 110 if percentage == 100
    return (1..10).find_all{|i| i * 10 > percentage}.map{|i| i.to_i * 10} * " "
  end

  def shortened_filename(file)
    file.filename.gsub("#{SimpleCov.root}/", '')
  end

  def relative_filename(path)
    @path_relativizer[path]
  end

  def file_filter_classes(file_path)
    file_path.split('/')[0..-2] * " "
  end

  def line_css_for(coverage)
    unless coverage.nil?
      if coverage > 0
        "marked"
      else
        "uncovered"
      end
    else
      "inferred"
    end
  end
end
