class Cocktail < ApplicationRecord
  has_many :doses
  validates :names, uniqueness: true, presence: true

  def unused_ingredients
    if self.doses.count > 0
      Ingredient.where("id NOT IN (?)", self.doses.map{|d| d.ingredient.id})
    else
      Ingredient.all
    end
  end
end
