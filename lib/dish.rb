class Dish
    attr_reader :name, 
                :category

 def initialize(name, category)
    @name = name
    @category = category
 end

end

couscous_salad = Dish.new("Couscous Salad", :appetizer)
cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)