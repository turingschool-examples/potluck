require './dish'

class Potluck
  attr_reader :date
              :dishes

    def initialize(date)
      @date = date
      @dishes = [ ]

    end

    def dishes
      @dishes
    end

    def add_dish(dish)
      @dishes.push(dish)

    end

    def get_all_from_category(type)
     @dishes.map do|dish|
       categories = [ ]
       if dish.category == type
         categories.push(dish)
        return categories
       end
      end
    end


end
