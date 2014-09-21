require 'passenger'
require 'carriage'

describe Carriage do
	
  def fill_carriage(carriage)
    40.times { carriage.pick_up (passenger) }
  end

  let(:passenger) {Passenger.new}
  let(:carriage) {Carriage.new}

  it "should pick up a passenger" do
	expect(carriage.passenger_count).to eq(0)
	carriage.pick_up(passenger)
	expect(carriage.passenger_count).to eq(1)
  end

  it "should release a passenger" do
  	carriage.pick_up(passenger)
    expect(carriage.passenger_count).to eq(1)
    carriage.release(passenger)
    expect(carriage.passenger_count).to eq(0)
  end

  it "should know when it's full" do
    fill_carriage(carriage)
    expect(carriage).to be_full
  end

  it "should not accept a passenger if it's full" do
    fill_carriage(carriage)
    expect(lambda{carriage.pick_up(passenger)}).to raise_error(RuntimeError)
  end

end