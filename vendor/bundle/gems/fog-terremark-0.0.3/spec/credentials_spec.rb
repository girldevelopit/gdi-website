require 'minitest_helper'

describe Fog::Compute::Terremark do
  it 'authenticates' do
    Fog::Compute::Terremark.new(
        :terremark_vcloud_username => 'test@example.com',
        :terremark_vcloud_password => '123456')
  end
end