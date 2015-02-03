class Ability
  include CanCan::Ability

  def initialize(user)
    allroles = []
    user.roles.each do |r|
      allroles << r.name
    end
    if allroles.include? "admin"
      can :manage, :all
    elsif allroles.include? "leader"
      #allow view of Dashboard page
      can :read, ActiveAdmin::Page, name: 'Dashboard'

      #leader can only view/update chapter details (not create)
      can [:read, :view, :manage], Chapter, :id => user.chapter_id
     
      #only list/manage the bios and sponsors related leader's chapter
      can [:manage, :read, :view], [Bio, Sponsor], :chapter_id => user.chapter_id

      #leader can create new bios and sponsors, but chapter_id is hidden in form
      can :create, [Bio, Sponsor]

      #leaders cannot create new chapters
      cannot :create, Chapter

      #leaders cannot view adminuser page
      cannot :read, AdminUser
    else
      can :view, :all
    end
  end
end
