class Potluck

  attr_reader :date, :dishes, :menu

  def initialize(date)
    @date = date
    @dishes = []
    @menu = {}
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select{|dish| dish.category == category}
  end

  def menu
    @dishes.each{|dish| @menu[(dish.category.to_s + "s").to_sym] = []}
    @menu.each do |key, value|
      tohash = @dishes.find_all{|dish| dish.category == key.to_s.chop.to_sym}
      tovalue = []
      tohash.each do |dish|
        tovalue << dish.name
        @menu[key] = temp.sort
      end
    end
  end


  def ratio(category)
    (get_all_from_category(category).length / @dishes.length.to_f * 100).round(1)
  end
end
