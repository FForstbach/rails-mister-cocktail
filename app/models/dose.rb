class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, uniqueness: true
  validates :ingredient, presence: true
  validates :cocktail, :uniqueness => {:scope => :ingredient}
end
