sub_number = (3..99).to_a.reverse

sub_number.each do |sub|
	puts sub.to_s + ' bottles of beer on the wall, ' + sub.to_s + ' bottles of beer!'
	sub_minus = (sub-1)
	puts 'Take one down, pass it around: ' +  sub_minus.to_s  + ' of bottles of beer on the wall!' 	
end
puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down, pass it around: 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "Take one down, pass it around: no more bottles of beer on the wall!"
