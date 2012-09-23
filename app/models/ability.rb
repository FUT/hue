class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new

    send "#{user.role.name}_abilities".to_sym, user

  end

  def admin_abilities(user)
    can :manage, :all
  end

  def user_abilities(user)
    can :manage, :all
  end
end
