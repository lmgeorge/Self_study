def reverser
	if block_given?
		yield.split(' ').map(&:reverse).join(' ')
	end
end

def adder n = 1
	if block_given?
		yield + n
	end
end

def repeater x = 1
	if block_given?
		x.times do 
			yield
		end
	end
end