class User < ApplicationRecord
  # validation rule for uniqueness and presence
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :username, uniqueness: true, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
