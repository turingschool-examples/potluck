class Dish

  attr_reader :name, :category

  def initialize(name, category)
    @name = name
    @category = category
  end
end

#? in test file typically denotes a method will write

#if you need to manipulate/change, either accessor or method we write
