class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness:true
  has_many :user_recipes
  has_many :recipes, through: :user_recipes
end
