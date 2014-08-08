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
      can :manage, :all
    else
      can :manage, :all
    end
  end
end
