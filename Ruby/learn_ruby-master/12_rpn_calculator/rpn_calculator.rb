class RPNCalculator
	def initialize
		@calc = [0]
	end
	
	def push n
		@calc << n
	end

	def plus
		if @calc.size >= 2 
			@calc.push (@calc.pop + @calc.pop) 
		else 
			raise TypeError, "calculator is empty"
		end
	end
	
	def value
		@calc[(@calc.size - 1)]
	end

	def minus
		if @calc.size >= 2
			x = @calc.pop 
			y = @calc.pop

			@calc.push (y - x)
		else
			raise NoMethodError, "calculator is empty"
		end
	end

	def times
		if @calc.size >= 2
			@calc.push (@calc.pop * @calc.pop)
		else 
			raise TypeError, "calculator is empty"
		end
	end

	def divide
		if @calc.size >= 2
			x = @calc.pop.to_f
			y = @calc.pop.to_f
			@calc.push (y/ x)
		else
			raise Exception , "calculator is empty"
		end
	end

	def tokens chrs
		chrs.split.map { |chr|  chr.match(/[^0-9]/) ? chr.intern : chr.to_i }
	end

	def evaluate chrs
		tokens(chrs).each do |c|
			case c
			when :+
				plus
			when  :-
				minus
			when :*
				times
			when :/
				divide
			else 
				push c
			end
		end
		value
	end
end