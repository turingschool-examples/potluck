class Dish
  attr_reader :name,
              :category

  def initialize (name, category)
     @name = name
     @category = { appetizer: [],
                   entre: []
                 }
  end

end
