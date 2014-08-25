require './lib/airport.rb'
require './lib/check_weather'


describe Airport do

let(:airport)		{ Airport.new					}
let(:plane) 		{ double = 'plane'				}


	context 'take off and landing' do
		it 'can have a plane land in it' do
			allow(airport).to receive(:weather).and_return("sunny")
			airport.dock(plane)
			expect(airport.filled_spaces).to eq 1
		end

		it 'can have a plane take off from it' do
			allow(airport).to receive(:weather).and_return("sunny")
			airport.dock(plane)
			airport.release(plane)
			expect(airport.filled_spaces).to eq 0
		end
	end

	context 'traffic control' do
		it 'a plane cannot land if airport is full' do
			airport.capacity=1
			allow(airport).to receive(:weather).and_return("sunny")
			airport.dock(plane)
			expect{ airport.dock(plane) }.to raise_error("cannot dock, airport full") 
		end

		it 'a plane cannot take off when a storm is brewing' do
			allow(airport).to receive(:weather).and_return("storm")
			expect{ airport.release(plane)}.to raise_error("cannot release, bad weather") 
		end

		it 'a plane cannot land in the middle of a storm' do
			allow(airport).to receive(:weather).and_return("storm")
			expect{ airport.dock(plane) }.to raise_error("cannot dock, bad weather") 
		end

		it 'a plane cannot take off if airport is empty' do
			allow(airport).to receive(:weather).and_return("sunny")
			expect{airport.release(plane)}.to raise_error("no plane to release")
		end

	end

	

end