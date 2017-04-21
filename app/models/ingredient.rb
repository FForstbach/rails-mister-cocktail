class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses, :dependent => :restrict_with_error

  validates :name, uniqueness: true


end
