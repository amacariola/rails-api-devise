class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  validates :email, uniqueness: true, presence: true
  validates_format_of :email, with: /@/
  validates :password, presence: true
  validates :password_confirmation, presence: true

end
