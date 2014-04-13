class User < ActiveRecord::Base
  # enable creatable_by?(user)
  include Authority::Abilities

  # enable can_create?(resource)
  include Authority::UserAbilities

  # auth settings are in app/authorizers/user_authorizer.rb
  self.authorizer_name = 'UserAuthorizer'

  resourcify

  rolify

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:editor)
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
