class  Potluck 
  
  attr_reader :date, :dishes
  
  def initialize (date)
  @date = date
  @dishes = []
  end
  
  def add_dish(dish)
    @dishes << dish
  end
  
  def get_all_from_category(category)
    dishes = []
    appetizers = :appetizer []
    entree = :entree []
    dessert = :dessert []
    
    @dishes.each do |category, name|
      if category == :appetizer
          appetizers[:appetizer] << name
        elsif category== :entree
          entree[:entree] << name
        else
          dessert[:dessert] << name
      end
      dishes << appetizers, entree, dessert
    end    
    @dishes[category]   
  end
  
end
