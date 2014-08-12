class Ability
  include CanCan::Ability

  def initialize(user)
    allroles = []
    user.roles.each do |r|
      allroles << r.name
    end
    if allroles.include? "webmistress"
      can :manage, :all
    elsif allroles.include? "admin"
      # binding.pry
      can :manage, user.location
      can :manage, user.bio
      can :manage, Sponsor
      can :read, :all
    else
      can :view, :all
    end
  end
end
