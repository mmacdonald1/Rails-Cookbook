class Recipe < ApplicationRecord
  validates :name, presence: true
  has_many :user_recipes
  has_many :users, through: :user_recipes
end
