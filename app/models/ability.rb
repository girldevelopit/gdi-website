class Ability
  include CanCan::Ability

  def initialize(user)
    # binding.pry
    allroles = []
    user.roles.each do |r|
      allroles << r.name
    end
    if allroles.include? "webmistress"
      can :manage, :all
    elsif allroles.include? "admin"
      can :manage, Location, id: user.location.id
      can :manage, AdminUser, id: user.id
    else
      can :view, :all
    end
  end
end
