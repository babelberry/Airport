require 'airport'


describe Airport do

let(:airport)	{ Airport.new 		}
let(:plane) 	{ double = 'plane'	}


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

end