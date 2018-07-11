require_relative './dish'

class Potluck

  attr_reader   :date,
                :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category_name)
    dishes.find_all do |dish|
      dish.category == category_name
    end
  end

  def menu_hash(appetizer_names, entre_names, dessert_names)
    {:appetizers => appetizer_names,
      :entres => entre_names,
      :desserts => dessert_names
    }
  end

  def menu
    dishes = @dishes
    appetizer_names = apps(dishes)
    entre_names = entres(dishes)
    dessert_names = desserts(dishes)
    menu_hash(appetizer_names, entre_names, dessert_names)
  end

  def apps(dishes)
    app_names = []
    dishes.find_all do |dish|
      if dish.category == :appetizer
        app_names << dish.name
      else
        dish.name
      end
    end
    app_names.sort
  end

  def entres(dishes)
    entre_names = []
    dishes.find_all do |dish|
      if dish.category == :entre
        entre_names << dish.name
      else
        dish.name
      end
    end
    entre_names.sort
  end

  def desserts(dishes)
    dessert_names = []
    dishes.find_all do |dish|
      if dish.category == :dessert
        dessert_names << dish.name
      else
        dish.name
      end
    end
    dessert_names.sort
  end

  def ratio()
    amount

  end
end
