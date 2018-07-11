class Dish

  attr_reader :name, :category

  def initialize(name, category)
    @name = name
    @category = category
  end

  def dishes
    dishes = {appetizer: "Couscous Salad", entre: "Cocktail Meatballs"}
  end

end
