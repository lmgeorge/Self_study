class Timer	
	attr_accessor :seconds
	
	def initialize 
		@seconds = 0
	end
	def padded n
		n = n.to_s
		n.length < 2 ? n.prepend("0") : n
	end

	def time_string
		h = @seconds/3600
		m = (@seconds%3600)/60
		s = @seconds%60
		ts = [h, m, s]
		ts.map! { |i| padded(i) }
		ts.join ":"
	end
end