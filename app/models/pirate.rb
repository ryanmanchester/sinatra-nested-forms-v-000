require 'pry'
class Pirate
  attr_accessor :name, :weight, :height
  PIRATES = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
  end
end
