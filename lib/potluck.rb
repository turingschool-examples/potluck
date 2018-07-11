require "pry"
require "./lib/dish.rb"
require "./lib/potluck.rb"

class Potluck
  attr_reader :date,
              :dishes

  def initialize (date)
     @date = date
     @dishes = []
  end
end
