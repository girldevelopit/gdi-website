require 'rails_helper'


describe Sponsor do

  it 'includes resourcify' do
    expect(Sponsor.ancestors).to include(::Rolify::Resource)
  end

  it 'responds to chapter' do
    expect(Sponsor.create).to respond_to(:chapter)
  end

  it 'responds to image' do
    expect(Sponsor.create).to respond_to(:image)
  end


end