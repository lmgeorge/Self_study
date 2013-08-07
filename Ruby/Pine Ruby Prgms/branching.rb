puts 'Branching or if/then statements'
puts ''
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris'
	puts 'What a lovely name!'
end
puts ''
puts 'Using Else'
puts ''
puts 'I am a fortuneteller. Tell me your name:'
name = gets.chomp
if name == 'Lauren'
	puts 'I see great things in your future.'
else 
	puts 'Your future is...oh my look at the time!'
	puts 'I really have to go, sorry!'
end
