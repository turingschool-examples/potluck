# frozen_string_literal: true

require './lib/dish'

# Potluck Class
class Potluck
  attr_reader :date,
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end
end
