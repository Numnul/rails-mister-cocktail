class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :name, uniqueness: true, presence: true
end
