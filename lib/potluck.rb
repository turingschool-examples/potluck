require "./lib/dish"

class Potluck

  attr_accessor :date

  def initialize(date)
    @date = date
    @dishes = []
  end

end
