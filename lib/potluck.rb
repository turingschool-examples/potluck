require 'pry'
require "./lib/dish"
  class Potluck
  attr_reader :date,
              :dishes
    def initialize(date="7-13-18")
      @date = date
      @dishes = []
    end

    def add_dish(dish)
      @dishes << dish
    end
  end
