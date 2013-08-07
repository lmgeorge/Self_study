puts 'Hello, welcome to the leap year calculator! Please enter the first year. This should be the lowest year in your range.'
	starting = gets.chomp.to_i
puts 'Thanks! Now please enter the end of your range. It should be the higher number.'
	ending = gets.chomp.to_i
puts 'One sec!'
puts ''
year = starting

while year <= ending
	if year%4 == 0
		if year%100 != 0 || year%400 == 0
			puts year
		end
	end
	year = year + 1
end