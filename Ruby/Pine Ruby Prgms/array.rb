let = ['a','b','c']

puts let 
puts
puts let[0]
puts let[1]
puts let[4]

puts 'using EACH method'
puts
languages = ['English', 'French', 'Spanish']
languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end
puts
3.times do
	puts 'Helloooo?'
end
puts
puts 'join'
puts
foods = ['cabbage', 'meat', 'mineral']
puts foods.join(', ')
20.times do 
	puts [['*']]
end
puts
puts 'push, pop, last'
puts
favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length