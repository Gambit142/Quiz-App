# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
  
    return unless user.present?
    
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :manage, Answer, user: user
    end
  end
end
