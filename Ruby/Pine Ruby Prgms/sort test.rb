words = []
numbers = []

while 
	word = gets.chomp
	if word == fixnum || word == bignum 
		then word = number
	end
	if word == ""
		break
	end
words.push word
numbers.push number
end
 puts 'Here you go!'
 puts
 words.sort
 numbers.sort
