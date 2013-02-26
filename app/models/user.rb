class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :role

  ROLES = %w[admin client artist]

  def role_enum
     [['Admin', 'admin'], ['Client', 'client'], ['Artist', 'artist']]
  end
end
