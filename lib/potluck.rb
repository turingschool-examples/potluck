class Potluck 
  attr_reader :date, 
              :new_dish,
              :dishes
            

  def initialize(date)
    @date = date 
    @dishes = []
    @new_dish = new_dish
  end 
  
  def dishes 
    @dishes 
  end 
  
  def add_dish(new_dish)
    new_dish
  end 
  
  def length
    @dishes << new_dish 
    @dishes.length 
  end 
      
end