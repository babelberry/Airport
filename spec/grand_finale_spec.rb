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
  	airport.capacity=6
  	six_planes = [plane, plane2, plane3, plane4, plane5, plane6]
  	six_planes.each {|plane| airport.dock(plane)}
  	six_planes.each {|plane| airport.release(plane)}
  	expect(plane.status?).to eq "flying"
  	expect(plane2.status?).to eq "flying"
  	expect(plane3.status?).to eq "flying"
  	expect(plane4.status?).to eq "flying"
  	expect(plane5.status?).to eq "flying"
  	expect(plane6.status?).to eq "flying"
  	end
	
end