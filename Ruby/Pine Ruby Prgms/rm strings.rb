phrase = gets.chomp
puts phrase.gsub(/[I]/) { 'We'}


name = 'Bob'

puts name == 'Bob'

def  add (a, b)
	puts 'Enter a.'
	a = gets.chomp
	puts 'Enter b'
	b = gets.chomp
end
puts 'Here you go.'