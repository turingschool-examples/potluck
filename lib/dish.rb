# frozen_string_literal: true

# Dish Class
class Dish
  attr_reader :name,
              :category

  def initialize(name, category)
    @name = name
    @category = category
  end
end
