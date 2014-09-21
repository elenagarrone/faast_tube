require 'station'
require 'passenger'
require 'train'

describe Station do

  let(:station) {Station.new}
  let(:passenger) {Passenger.new}
  let(:train) {Train.new}

  it "should let passenger inside if logged in" do
    station.let_inside(passenger)
    expect(station.passenger_count).to eq(1)
  end

  it "should let passenger out " do
  	station.let_inside(passenger)
  	expect(station.passenger_count).to eq(1)
  	station.let_outside(passenger)
  	expect(station.passenger_count).to eq(0)
  end

  it "should accept incoming trains" do
    expect(station.train_count).to eq(0)
  	station.accept_incoming(train)
    expect(station.train_count).to eq(1)
  end

  it "should leave outgoing trains" do
  	station.accept_incoming(train)
  	expect(station.train_count).to eq(1)
  	station.leave_outgoing(train)
  	expect(station.train_count).to eq(0)
  end
  

end