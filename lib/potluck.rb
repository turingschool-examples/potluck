# frozen_string_literal: true

require './lib/dish'

# Potluck Class
class Potluck
  attr_reader :date

  def initialize(date)
    @date = date
  end
end
