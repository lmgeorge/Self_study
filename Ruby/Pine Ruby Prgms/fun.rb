puts 'What do you want to do?'
reply = gets.chomp
puts 'Oh really? You would like to ' + reply  + '?'
reply2 = gets.chomp
if reply2 == 'Yes!'
	puts 'Wonderful! Let\'s get started.'
else
	puts 'Hmm, you don\'t seem very excited, so I think not. Goodbye.'	
end

2.between? [1, 3]