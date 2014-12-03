require 'rails_helper'


describe AdminUser do

  it 'includes rolify' do
    expect(AdminUser.ancestors).to include(::Rolify::Role)
  end

  describe 'includes devise' do
    it '.' do
      expect(AdminUser.ancestors).to include(::Devise::Models)
    end

    it 'with database_authenticatable' do
      expect(AdminUser.ancestors).to include(::Devise::Models::DatabaseAuthenticatable)
    end

    it 'with recoverable' do
      expect(AdminUser.ancestors).to include(::Devise::Models::Recoverable)
    end

    it 'with rememberable' do
      expect(AdminUser.ancestors).to include(::Devise::Models::Rememberable)
    end

    it 'with trackable' do
      expect(AdminUser.ancestors).to include(::Devise::Models::Trackable)
    end

    it 'with validateable' do
      expect(AdminUser.ancestors).to include(::Devise::Models::Validatable)
    end

  end

  it 'responds to bio' do
    expect(AdminUser.create).to respond_to(:bio)
  end

  it 'responds to chapter' do
    expect(AdminUser.create).to respond_to(:chapter)
  end

  it 'responds to roles' do
    expect(AdminUser.create).to respond_to(:roles)
  end


end