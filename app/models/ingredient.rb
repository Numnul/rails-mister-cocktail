class Ingredient < ApplicationRecord
  has_many :doses
  validates :names, uniqueness: true, presence: true
end
