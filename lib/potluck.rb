require './lib/dish'
require 'pry'

class PotLuck

  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish
    dish = Dish.new(name, appetizer)
    @dishes << dish
  end

  def count_types_of_dishes
    @appetizer = []
    @entree = []
    @dessert = []

    @dishes.each do |dish|
      if dish.category = :appetizer
        @appetizer << dish
      elsif dish.category = :entree
        @entree << dish
      else dish.category = :dessert
        @dessert << dish
      end
      @appetizer.count
      @entree.count
      @dessert.count
    end

    def get_all_from_category(type_of_food)
      if type_of_food == :appetizer
        return @appetizer.count
      elsif type_of_food == :entree
        return @entree.count
      else type_of_food == :dessert
        return @dessert.count
      end
    end
end
