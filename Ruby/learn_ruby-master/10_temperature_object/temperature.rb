class Temperature	
	
	def Temperature.from_celsius n
		new ({:c => n})
	end

	def Temperature.from_fahrenheit n
		new ({:f => n})
	end

	def ftoc f
		(f - 32) * (5.0/9.0)
	end

	def ctof c
		(c * (9.0/5.0)) + 32
	end
	
	def initialize temp
		@temp = temp[:f] || ctof(temp[:c])
	end
	
	def  in_fahrenheit 
		@temp
	end

	def in_celsius
		ftoc(@temp)
	end

end

class Celsius < Temperature
	def initialize n
		super(:c => n)
	end
end

class Fahrenheit < Temperature
	def initialize n
		super(:f => n)
	end
end