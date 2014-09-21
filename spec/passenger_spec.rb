require 'passenger'

describe Passenger do

	let(:passenger) {Passenger.new}

	it "should not be logged in after we create it" do
		expect(passenger).not_to be_logged
	end
	
	it "should be able to log in" do
		passenger.log_in
        expect(passenger).to be_logged
    end

    it "should be able to exit" do
    	passenger.log_in
    	passenger.log_out
    	expect(passenger).not_to be_logged
    end

end