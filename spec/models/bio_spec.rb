require 'rails_helper'


describe Bio do

  it 'includes resourcify' do
    expect(Bio.ancestors).to include(::Rolify::Resource)
  end

  it 'responds to admin_user' do
    expect(Bio.create).to respond_to(:admin_user)
  end

  it 'responds to chapter' do
    expect(Bio.create).to respond_to(:chapter)
  end

  it 'responds to image' do
    expect(Bio.create).to respond_to(:image)
  end

end