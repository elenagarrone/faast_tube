require_relative 'station'

class Carriage

  # DEFAULT_CAPACITY = 40

  def initialize(options = {})
    @passengers = []
    # @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def capacity
    @capacity =  40
  end

  def empty?
    @passenger_count = 0
  end

  def pick_up(passenger)
    raise "Sorry this carriage is full, try another one" if full?
    @passengers << passenger
  end

  def release(passenger)
    @passengers.delete(passenger)
  end

  def passenger_count
    @passengers.count
  end

  def full?
    passenger_count == capacity
  end

end