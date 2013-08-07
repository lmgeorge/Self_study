class Array
	def sum
		self.inject(0) { |a,b| a + b }
	end

	def square
		self.map { |n| n**2 }
	end

	def square!
		self.map! { |n| n**2 }
	end
end