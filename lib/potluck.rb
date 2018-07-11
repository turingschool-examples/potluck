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
    return @dishes 
  end 
  
  def get_all_from_category(category)
    @dishes.find_all do |dish|
      dish.category == category 
    end 
  end 
        
  def menu_populate
    menu = {}
    @dishes.each do |dish|
      menu << [dish.category]
    end 
    return menu 
  end 
  
  def menu
    menu_populate.map! do |category_key|
      [category_key] = @dishes.find_all do |dish|
        dish.category == category_key
      end 
    end 
  end   
  
  def ratio(category)
    menu[category].count.to_f / menu.count.to_f
  end 
end 