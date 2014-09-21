require 'train'

describe Train do
	
	let(:train) {Train.new}

	it "should have a number of carriages" do
		expect(train.lenght).to eq(4)
    end
    
end