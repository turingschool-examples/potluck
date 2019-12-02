class Potluck

  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    category_list = []

    @dishes.each do |dish|
      if dish.category == category
        category_list << dish
      end
    end
    category_list
  end

  def menu
    appetizer_list = []

    @dishes.each do |dish|
      if dish.category == :appetizer
        appetizer_list << dish.name
      end
    end

    entree_list = []

    @dishes.each do |dish|
      if dish.category == :entree
        entree_list << dish.name
      end
    end

    dessert_list = []

    @dishes.each do |dish|
      if dish.category == :dessert
        dessert_list << dish.name
      end
    end

    menu = { :appetizer => appetizer_list.sort, :entree => entree_list.sort, :dessert => dessert_list.sort}
  end

  def ratio(category)
    category_list = []

    @dishes.each do |dish|
      if dish.category == category
        category_list << dish
      end
    end
    (100.0 * category_list.length) / @dishes.length
  end 

end
