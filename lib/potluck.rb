class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
    @menu = {}
    @num_dishes = 0
  end

  def add_dish(dish)
    @dishes << dish
    cat = dish.category.to_s
    cat += 's'
    cat = cat.to_sym
    @menu[cat] ||= []
    @menu[cat] << dish.name
    @menu[cat].sort!
    @num_dishes += 1
  end

  def get_all_from_category(category)
    @dishes.find_all { |dish| dish.category == category }
  end

  def menu
    @menu
  end

  def ratio(category)
    (100 * get_all_from_category(category).length.to_f / @num_dishes).round(1)
  end
end
