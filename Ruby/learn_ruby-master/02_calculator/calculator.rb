

def add a,b
	a + b
end

def subtract a,b
	a - b
end

def sum numbers
	numbers.inject(0) {|a, b| a + b}
end

def multiply *numbers
 	numbers.reduce(:*)
end

def power base,exponent
	base**exponent
end

def factorial number
	a = (1..number).to_a
	a.inject(1) {|a, b| a*b}
end

