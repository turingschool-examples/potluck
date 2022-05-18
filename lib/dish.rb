class Dish
  attr_reader :name, :appetizer, :category
  def initialize(name, category)
    @name = name
    @category = :appetizer
  end
end
