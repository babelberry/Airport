class Airport

	def initialize
		@in_airport ||= []
	end

	def dock(plane)
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
