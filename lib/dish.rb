class Dish

  attr_reader :name, :category

  def initialize(name, category)
    @name = name
    @category = {category => name}
  end

  def menu_hash
    @category
  end
end
