require './lib/dish.rb'
require 'pry'

class Potluck

  attr_reader :date,
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

end
