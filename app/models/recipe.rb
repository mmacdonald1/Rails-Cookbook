class Recipe < ApplicationRecord
  validates :name, presence: true
  has_many :list_recipes
  has_many :lists, through: :list_recipes
end
