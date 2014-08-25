require './lib/airport'
require './lib/plane'

describe "The Grand Finale (last spec)" do 
	
let (:airport) 	{ Airport.new }
let (:plane)	{ Plane.new}
let (:plane2)	{ Plane.new}
let (:plane3)	{ Plane.new}
let (:plane4)	{ Plane.new}
let (:plane5)	{ Plane.new}
let (:plane6)	{ Plane.new}



	it 'all planes can land and all planes can take off' do
  	allow(airport).to receive(:weather).and_return("sunny")
  	airport.capacity=6
  	six_planes = [plane, plane2, plane3, plane4, plane5, plane6]
  	until airport.filled_spaces == airport.capacity do 
  			six_planes.each {|plane| airport.dock(plane)} 
  			end
  	six_planes.each {|plane| airport.release(plane)}
  	expect(six_planes.all?{|plane| plane.status? == "flying"}).to be true
  	end
	
end