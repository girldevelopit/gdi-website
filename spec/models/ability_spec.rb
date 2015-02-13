require 'rails_helper'


describe Ability do

  let(:user) { AdminUser.new(:email => 'fake@fake.com', :password => 'p') }
  before{ user.save }

  it 'responds to initialize' do
    expect{Ability.new(user)}.not_to raise_error()
  end


  describe 'with admin' do

    before{user.add_role('admin')}

    it 'can manage all' do
      ability = Ability.new(user)
      ability.can? :manage, :all
    end
  end

  describe 'with leader' do
    before{user.add_role('leader')}

    it 'can manage their chapter' do
      ability = Ability.new(user)
      ability.can? :manage, user.chapter
    end

    it 'can manage their bio' do
      ability = Ability.new(user)
      ability.can? :manage, user.bio
    end

    it 'can manage sponsor' do
      ability = Ability.new(user)
      ability.can? :manage, Sponsor
    end

    it 'can read all' do
      ability = Ability.new(user)
      ability.can? :read, :all
    end
  end

  describe 'else' do
    it 'can view all' do
      ability = Ability.new(user)
      ability.can? :view, :all
    end
  end


end