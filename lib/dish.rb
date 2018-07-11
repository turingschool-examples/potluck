class Dish 
  attr_reader :name,
              :category 

  def initialize(name = "Couscous Salad", category)
    @name = name
    @category = :appetizer 
  end  
  
end 