require './lib/airport.rb'


describe Airport do

let(:airport)		{ Airport.new 									}
let(:plane) 		{ double = 'plane'								}


	context 'take off and landing' do
		it 'can have a plane land in it' do
			airport.dock(plane)
			expect(airport.filled_spaces).to eq 1
		end

		it 'can have a plane take off from it' do
			airport.dock(plane)
			airport.release(plane)
			expect(airport.filled_spaces).to eq 0
		end
	end

	context 'traffic control' do
		it 'a plane cannot land if airport is full' do
			airport.capacity=1
			airport.dock(plane)
			expect{ airport.dock(plane) }.to raise_error("cannot dock, airport full") 
		end

		xit 'a plane cannot take off when a storm is brewing' do
			airport.check_weather until weather == 'sunny'
			expect{ airport.dock(plane) }.to raise_error("cannot dock, bad_weather") 
		end

	end

end