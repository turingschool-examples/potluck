class Dish

  attr_reader :name, :category

  def initialize(name, category = :appetizer)
    @name = name
    @category = category
  end
end
