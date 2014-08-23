require 'plane'

describe Plane do 

	let(:plane) { Plane.new			}

	it "is grounded when created" do
		expect(plane.grounded?).to be true
	end

	it "can take off" do
		plane.take_off
		expect(plane.grounded?).to be false
	end

	it "can land" do
		plane.take_off
		plane.land
		expect(plane.grounded?).to be true
	end
	
end