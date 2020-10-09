class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @dishes = []
    @date = date
  end
  
end
