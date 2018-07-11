require "pry"


class Dish

  attr_reader :name,
              :category
  def initialize(name, category)
    @name = name
    @category = {appetizer: "Couscous Salad",
                entre: "Cocktail Meatballs"
                      }
    # binding.pry
  end

end
