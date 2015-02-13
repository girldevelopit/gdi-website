require 'rails_helper'


describe Role do

  it 'includes resourcify' do
    expect(Role.ancestors).to include(::Rolify::Resource)
  end

  it 'responds to admin_users' do
    expect(Role.create).to respond_to(:admin_users)
  end

  it 'responds to resource' do
    expect(Role.create).to respond_to(:resource)
  end

  it 'includes scopify'

end