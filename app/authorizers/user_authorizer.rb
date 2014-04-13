class UserAuthorizer < ApplicationAuthorizer

  def self.updatable_by?(user)
    user.has_role?(:admin) || user.has_role?(:client)
  end

  def self.creatable_by?(user)
    user.has_role?(:admin) || user.has_role?(:client)
  end

  def self.readable_by?(user)
    user.has_role?(:admin) || user.has_role?(:client)
  end

  def self.deletable_by?(user)
    user.has_role?(:admin)
  end

end