#
# Author:: Matt Eldridge (<matt.eldridge@us.ibm.com>)
# © Copyright IBM Corporation 2014.
#
# LICENSE: MIT (http://opensource.org/licenses/MIT)
#

Shindo.tests("Fog::Storage[:softlayer] | Directory model", ["softlayer"]) do
  pending unless Fog.mocking?

  tests("success") do

    @test_dir1 = 'test-dir-1'
    @test_dir2 = 'test-dir-2'
    @storage = Fog::Storage[:softlayer]

    tests("#create") do
      data_matches_schema(Fog::Storage::Softlayer::Directory) { @storage.directories.create(:key => @test_dir1) }
    end

    tests("#get") do
      data_matches_schema(Fog::Storage::Softlayer::Directory) { @storage.directories.get(@test_dir1) }
    end

    tests("#all") do
      @storage.directories.create(:key => @test_dir2)
      schema = [
          Fog::Storage::Softlayer::Directory,
          Fog::Storage::Softlayer::Directory
      ]
      data_matches_schema(schema) { @storage.directories.all }
    end

    tests("#destroy") do
      data_matches_schema(true) { @storage.directories.get(@test_dir1).destroy }
      data_matches_schema([Fog::Storage::Softlayer::Directory]) { @storage.directories.all }
    end

  end


  tests ("failure") do

    tests("#create").raises(ArgumentError) do
      @storage.directories.create
    end

  end
end
