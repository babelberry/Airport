require 'plane'

describe Plane do 

	let(:plane) { Plane.new			}

	it "is flying when created" do
		expect(plane.status?).to eq "flying"
	end

	it "can land" do
		plane.land
		expect(plane.status?).to eq "landed"
	end

	it "can take off" do
		plane.land
		plane.take_off
		expect(plane.status?).to eq "flying"
	end
	
end