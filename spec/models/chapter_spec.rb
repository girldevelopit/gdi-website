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

  it 'handles full LinkedIn links' do
    expect(linkedin_link('https://www.linkedin.com/company/girl-develop-it-phoenix')).to eq('https://www.linkedin.com/company/girl-develop-it-phoenix')
    expect(linkedin_link('http://www.linkedin.com/groups/6696817/profile')).to eq('http://www.linkedin.com/groups/6696817/profile')
    expect(linkedin_link('http://www.linkedin.com/in/mjalkio')).to eq('http://www.linkedin.com/in/mjalkio')
    expect(linkedin_link('https://www.linkedin.com/groups?gid=6669157')).to eq('https://www.linkedin.com/groups?gid=6669157')
    expect(linkedin_link('https://www.linkedin.com//groups?home=&gid=4913954&trk=anet_ug_hm')).to eq('https://www.linkedin.com//groups?home=&gid=4913954&trk=anet_ug_hm')
  end

  it 'handles LinkedIn paths' do
    expect(linkedin_link('company/girl-develop-it-phoenix')).to eq('https://www.linkedin.com/company/girl-develop-it-phoenix')
    expect(linkedin_link('groups/6696817/profile')).to eq('https://www.linkedin.com/groups/6696817/profile')
    expect(linkedin_link('in/mjalkio')).to eq('https://www.linkedin.com/in/mjalkio')
    expect(linkedin_link('groups?gid=6669157')).to eq('https://www.linkedin.com/groups?gid=6669157')
    expect(linkedin_link('/groups?home=&gid=4913954&trk=anet_ug_hm')).to eq('https://www.linkedin.com//groups?home=&gid=4913954&trk=anet_ug_hm')
  end

  it 'handles strange capitalization in LinkedIn links' do
    expect(linkedin_link('HTTPS://www.linkedin.com/company/girl-develop-it-phoenix')).to eq('https://www.linkedin.com/company/girl-develop-it-phoenix')
    expect(linkedin_link('http://www.LinkedIn.com/groups/6696817/profile')).to eq('http://www.linkedin.com/groups/6696817/profile')
    expect(linkedin_link('http://www.linkedin.com/in/mJalkio')).to eq('http://www.linkedin.com/in/mjalkio')
    expect(linkedin_link('Groups?gid=6669157')).to eq('https://www.linkedin.com/groups?gid=6669157')
    expect(linkedin_link('https://WWW.linkedin.com//groups?home=&gid=4913954&trk=anet_ug_hm')).to eq('https://www.linkedin.com//groups?home=&gid=4913954&trk=anet_ug_hm')
  end

  it 'does not handle partial LinkedIn links' do
    expect(linkedin_link('www.linkedin.com/company/girl-develop-it-phoenix')).to eq('https://www.linkedin.com/www.linkedin.com/company/girl-develop-it-phoenix')
    expect(linkedin_link('linkedin.com/groups/6696817/profile')).to eq('https://www.linkedin.com/linkedin.com/groups/6696817/profile')
  end
end
