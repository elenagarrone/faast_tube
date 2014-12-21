class Passenger

  attr_accessor :logged 

  def initialize#(options = {})
    # @credit = options(:credit)
    # station = Station.new
    @logged = false 
  end

  def logged?
    @logged
  end

  def log_in #(station)
    @logged = true
  end

  def log_out #(station)
    @logged = false
  end

end