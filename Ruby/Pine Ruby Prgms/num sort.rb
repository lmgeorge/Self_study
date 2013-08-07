puts 'Enter as many numbers as you want, one number for each line. Press ENTER twice to sort!'
numbers = []

while 
	number = gets.chomp

	if number == ''
		break
	end

	numbers.push number.to_i
end
puts 'Here you go!'
puts
puts numbers.sort