require './lib/dish'
require 'pry'

class Potluck
  attr_accessor :date,
                :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end

  def get_all_from_category(selected_category)
    array_to_return = []
    @dishes.each do |dish|
      if dish.category == selected_category
        array_to_return << dish
      else
        next
      end
    end
    array_to_return
  end

  def menu
    hash_to_return = {}
    @dishes.each do |dish|
    if hash_to_return.include?(dish.category) == false
      hash_to_return[dish.category] = []
    end
      hash_to_return[dish.category] << dish.name
    end
    new_hash = {}
    arrrr = hash_to_return.map do |key, value|
      new_key = (key.to_s + 's').to_sym
      new_hash[new_key] = value.sort
    end
    new_hash
    end

    def ratio(category)
      hash_to_return = {}
      @dishes.each do |dish|
      if hash_to_return.include?(dish.category) == false
        hash_to_return[dish.category] = 0
      end
        hash_to_return[dish.category] += 1
      end
      sum = hash_to_return.values.sum
      ratio = (hash_to_return[category] / sum.to_f) * 100
      end


end
