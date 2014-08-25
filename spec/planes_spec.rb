require 'plane'

describe Plane do 

	let(:plane) { Plane.new			}

	it "is flying when created" do
		expect(plane.status?).to eq "flying"
	end

	it "has a flying status when up in the air" do
		plane.take_off
		expect(plane.status?).to eq "flying"
	end

	it "can land" do
		plane.land
		expect(plane.status?).to eq "landed"
	end

	it "can take off" do
		plane.take_off
		expect(plane.status?).to eq "flying"
	end
	
	it "changes its status to flying after taking off" do
		plane.land
		plane.take_off
		expect(plane.status?).to eq "flying"
	end
	
end