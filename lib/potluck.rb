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
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    ordered_names = @dishes.map {|dish| dish.name}.sort
    ordered_names.group_by do |name|
      (dishes.find {|dish| dish.name == name}.category.to_s + "s").to_sym
    end
  end

  def ratio(category)
    ((get_all_from_category(category).length / @dishes.length.to_f) * 100).round(1)
  end

end
