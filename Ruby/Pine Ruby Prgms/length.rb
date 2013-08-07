puts 'write any word'
word = gets.chomp
puts "number of characters"
puts word.length.to_s
puts "write another word"
word2 = gets.chomp
puts word.length.to_s.to_i + word2.length.to_s.to_i
