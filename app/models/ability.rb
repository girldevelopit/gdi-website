class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :webmistress
      can :manage, :all
    elsif user.has_role? :admin
      can :manage, Location, id: user.location.id
      can :manage, AdminUser, id: user.id
    else
      can :view, :all
    end
  end
end
