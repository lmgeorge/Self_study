puts 'Hello, what is your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris'
	puts 'Sigh.'
elsif name == 'Lauren'
	puts 'what a lovely name!'
end

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris' || name == 'Lauren'
	puts 'what a lovely name'
end