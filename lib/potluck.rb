require './lib/dish.rb'

class Potluck
  attr_accessor :date, :dishes, :category

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category_type)
    @category[category_type]
  end

  def menu
    # I spent too long trying to get my damn @category instance variable
    # to initialize, so I didn't get to this part. Basically I'd write
    # two sorts, one for the hash of categories, and the other
    # for the items in the array.
  end

  def ratio
    # I'd grab the length of the array inside of each hash key,
    # and then add them together and assign them to a variable
    # called total length or something like that. Then I would
    # find the length of the key and then just run the simple division
    # on it. I'm annoyed. 
  end
end

# dish = Dish.new("Couscous Salad", :appetizer)
# dish.category
# p dish.category
