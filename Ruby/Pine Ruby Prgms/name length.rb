puts 'Welcome to Command Prompt! You can just call me Mandy. What\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a great first name! Now we all have a middle name, except for me, of course. Would you mind sharing it?'
name2 = gets.chomp 
puts 'Sweet! ' + name  + ' ' + name2 + ' ' + 'sounds pretty cool. How about a last name to see how it all goes together!'
name3 = gets.chomp
puts 'So your full name is ' + name + ' ' + name2 + ' '+ name3 + '? I\'m so happy to get to know you!'
puts 'Did you know there are ' 
puts name.length.to_s.to_i + name2.length.to_s.to_i + name3.length.to_s.to_i
puts ' characters in your name, ' + name + ' ' + name2 + ' ' + name3 +'?'