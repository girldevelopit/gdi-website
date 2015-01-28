require File.expand_path( "#{File.dirname(__FILE__)}/helper" )

class SimplecovRcovFormatterTest < Test::Unit::TestCase
  def test_format
    SimpleCov.stubs(:coverage_path).returns('/tmp')
    index = File.join( SimpleCov::Formatter::RcovFormatter.output_path, "/index.html")
    if File.exists?( index )
      File.delete( index )
    end

    @original_result = {
      source_fixture( 'sample.rb' )                  => [nil, 1, 1, 1, nil, 0, 1, 1, nil, nil],
      source_fixture( 'app/models/user.rb' )         => [nil, 1, 1, 1, 1, 0, 1, 0, nil, nil],
      source_fixture( 'app/models/robot.rb' )        => [1, 1, 1, 1, nil, nil, 1, 0, nil, nil],
      source_fixture( 'app/models/house.rb' )        => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      source_fixture( 'app/models/airplane.rb' )     => [0, 0, 0, 0, 0],
      source_fixture( 'app/models/dog.rb' )          => [1, 1, 1, 1, 1],
      source_fixture( 'app/controllers/sample.rb' )  => [nil, 1, 1, 1, nil, nil, 0, 0, nil, nil]
    }

    @result = SimpleCov::Result.new( @original_result )
    SimpleCov::Formatter::RcovFormatter.new().format( @result )

    assert( File.exists?( index ) )

    rcov_result = File.read( index )
    assert_match( File.read( "#{File.dirname(__FILE__)}/fixtures/totals_tr.html"), rcov_result )
    assert_match( File.read( "#{File.dirname(__FILE__)}/fixtures/file_tr.html"), rcov_result )

    assert( File.exists?( File.join( SimpleCov::Formatter::RcovFormatter.output_path, "/test-fixtures-sample_rb.html") ) )
    assert( File.exists?( File.join( SimpleCov::Formatter::RcovFormatter.output_path, "/test-fixtures-app-models-user_rb.html") ) )
    assert( File.exists?( File.join( SimpleCov::Formatter::RcovFormatter.output_path, "/test-fixtures-app-models-robot_rb.html") ) )
    assert( File.exists?( File.join( SimpleCov::Formatter::RcovFormatter.output_path, "/test-fixtures-app-models-house_rb.html") ) )
    assert( File.exists?( File.join( SimpleCov::Formatter::RcovFormatter.output_path, "/test-fixtures-app-models-airplane_rb.html") ) )
    assert( File.exists?( File.join( SimpleCov::Formatter::RcovFormatter.output_path, "/test-fixtures-app-models-dog_rb.html") ) )
    assert( File.exists?( File.join( SimpleCov::Formatter::RcovFormatter.output_path, "/test-fixtures-app-controllers-sample_rb.html") ) )

    assert_match( File.read( "#{File.dirname(__FILE__)}/fixtures/detail_trs.html"), File.read(File.join( SimpleCov::Formatter::RcovFormatter.output_path, "/test-fixtures-app-models-user_rb.html")) )

  end

  def source_fixture( filename )
    File.expand_path( File.join( File.dirname( __FILE__ ), 'fixtures', filename ) )
  end
end
