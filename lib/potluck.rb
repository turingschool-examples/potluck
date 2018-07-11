require_relative 'dish'

class Potluck
  attr_reader :date, :dishes, :menu

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    list = []
    @dishes.map do |dish|
      if dish.category == category
        list << dish
      else
      end
    end
    list
  end


  def menu
    group = @dishes.group_by { |dish| dish.category }
    group.values.map do |dish|
      dish.map! do |value|
        value.name
      end
    end
    group
  end

  def ratio(category)
    your_item_total = menu[category].count
    total = 0
    menu.each do |k, v|
      total += v.count
    end
    (your_item_total.to_f / total.to_f) * 100
  end



end
