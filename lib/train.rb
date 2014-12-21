require_relative 'carriage'

class Train

  def initialize
    @carriages = 4.times {Carriage.new}
  end

  def lenght
    @carriages
  end
  
end