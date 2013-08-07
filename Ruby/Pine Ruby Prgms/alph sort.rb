puts 'Enter as many words as you want, one word per line. Press ENTER twice to sort!'
words = []
while 	
	word = gets.chomp

	if word == ''
		break
	end
	
	words.push word
end
puts 'Here you go!'
puts
puts words.sort

