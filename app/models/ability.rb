class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest
    
    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
    end
  end
end
