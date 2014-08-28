require './lib/check_weather'

class Airport

	include Weather

DEFAULT_CAPACITY = 20
	
	def initialize
		@in_airport ||= []
	end
	
	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def dock(plane)
			raise "cannot dock, bad weather" if weather == "stormy"
			raise "cannot dock, airport full" 	if @in_airport.count == capacity
			@in_airport << plane 
			plane.land
	end

	def filled_spaces
		@in_airport.count
	end

	def release(plane)
			raise "cannot release, bad weather" if weather == "stormy"
			raise "no plane to release"	if filled_spaces == 0
		@in_airport.pop
		plane.take_off
		self
	end
end