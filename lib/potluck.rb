require "pry"

class Potluck

  attr_reader :date, :dishes
  attr_accessor :menu

  def initialize(date)
    @date = date
    @dishes = []
    @menu = {}
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(food_type)
    all = @dishes.find_all do |food|
      food.category == food_type
    end
    return all
  end

  def menu
      apps = get_all_from_category(:appetizer)
      entres = get_all_from_category(:entre)
      desserts = get_all_from_category(:dessert)

      apps = apps.sort_by do |food|
         food = food.name[0]
      end

      apps = apps.map! do |food|
         food = food.name
      end

      entres = entres.sort_by do |food|
         food = food.name[0]
      end

      entres = entres.map! do |food|
         food = food.name
      end

      desserts = desserts.sort_by do |food|
         food = food.name[0]
      end

      desserts = desserts.map! do |food|
         food = food.name
      end

      menu_hash = {appetizers: apps, entres: entres, desserts: desserts}
  end

  def ratio(food_type)
    
  end

end
