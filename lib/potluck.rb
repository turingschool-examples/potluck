require 'pry'

class Potluck 
  
  attr_reader       :date,
                    :dishes 
  
  def initialize(date_string)
    @date = date_string
    @dishes = []
  end 
  
  def add_dish(dish_object)
    @dishes << dish_object 
  end 
  
end 