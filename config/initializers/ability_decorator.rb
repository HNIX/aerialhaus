class AbilityDecorator
  include CanCan::Ability
  def initialize(user)
    if user.respond_to?(:has_spree_role?) && user.has_spree_role?('admin')
    else
      can :display, Project
    end
  end
end

Spree::Ability.register_ability(AbilityDecorator)
