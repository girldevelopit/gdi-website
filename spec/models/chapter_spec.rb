require 'rails_helper'

include ChaptersHelper

describe Chapter do

  it 'includes FriendlyId' do
    expect(Chapter.ancestors).to include(FriendlyId)
  end

  it 'responds to chapter' do
    expect(Chapter.new).to respond_to(:chapter)
  end

  it 'has FriendlyId slugged' do
    expect(Chapter.ancestors).to include(FriendlyId::Slugged)
  end

  it 'has FriendlyId history' do
    expect(Chapter.ancestors).to include(FriendlyId::History)
  end

  it 'includes resourcify' do
    expect(Chapter.ancestors).to include(::Rolify::Resource)
  end

  it 'responds to admin_users' do
    expect(Chapter.new).to respond_to(:admin_users)
  end

  it 'responds to sponsors' do
    expect(Chapter.new).to respond_to(:sponsors)
  end

  it 'responds to bios' do
    expect(Chapter.new).to respond_to(:bios)
  end

  it 'is geocoded by :geo'

  it 'responds to geocode' do
    expect(Chapter.new).to respond_to(:geocode)
  end

  it 'tests the reverse_geocoded_by function'

  it 'tests post validation geocoding'

  it 'can parameterize the image route name' do
    expect(image_route('Pig Farmers')).to eq('state_map/pig-farmers.png')
  end
end