def pow (base, exponent)
	result = 1

	counter = 1
	while counter <= exponent
		result = result * base
		counter += 1
	end

	result
end

