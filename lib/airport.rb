class Airport

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
		if @in_airport.count == capacity
			raise "cannot dock, airport full"
		end
		@in_airport << plane 
	end

	def filled_spaces
		@in_airport.count
	end

	def release(plane)
		@in_airport.pop
		self
	end

end