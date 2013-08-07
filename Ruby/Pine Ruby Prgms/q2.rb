def sum(numbers)
	numbers.reduce(:+)
end

numbers = [1, 2, 3]
puts sum(numbers)