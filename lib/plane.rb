class Plane
	def initialize
		@grounded = false
	end

	def grounded?
		@grounded
	end

	def take_off
		@grounded = false
	end

	def land
		@grounded = true
	end
end