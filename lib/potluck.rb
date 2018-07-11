require "pry"
require "./lib/dish"

class Potluck
  def initialize(date)
    @date = date
    @dishes = {@name => @category}
  end

  def date
    @date
  end

  def dishes
    @dishes = []
  end

  def add_dish(name)

  end

end
