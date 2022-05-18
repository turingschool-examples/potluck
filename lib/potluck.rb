class Potluck
  attr_reader :dishes, :date
  def initialize(date)
    @dishes = []
    @date = date
  end
end
