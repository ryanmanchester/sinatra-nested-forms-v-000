require 'pry'
class Pirate
  attr_accessor :name, :weight, :height
  PIRATES = []

  def initialize(params)
    binding.pry
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
  end
end
