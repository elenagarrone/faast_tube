require 'passenger'
require 'station'

describe Passenger do

	let(:passenger) {Passenger.new}
	let(:station) {Station.new}

	it "should not be logged in after we create it" do
		expect(passenger).not_to be_logged
	end
	
	it "should be able to log in" do
		passenger.log_in(station)
        expect(passenger).to be_logged
    end

    it "should be able to log out" do
    	passenger.log_in(station)
    	passenger.log_out(station)
    	expect(passenger).not_to be_logged
    end

    # it "should be able to log in only if the credit is enough" do
    # 	passenger(:credit => 2.50)
    # 	expect()

end