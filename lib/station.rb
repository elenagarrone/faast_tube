require_relative 'passenger'

class Station


  def passengers
    @passengers ||= []
  end

  def passenger_count
    passengers.count
  end

  def let_inside(passenger)
    raise "Sorry you are not logged in" if passenger.logged? == false 
    passengers << passenger
  end

  def let_outside(passenger)
    passengers.delete(passenger)
  end

  def trains
    @trains ||= []
  end

  def train_count
    trains.count
  end

  def accept_incoming(train)
    trains << train
  end

  def leave_outgoing(train)
    trains.delete(train)
  end

end
