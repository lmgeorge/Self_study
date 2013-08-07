
def reverse_sign(an_integer)
  return 0 - an_integer
end
while 
	an_integer = gets.chomp.to_i
	puts reverse_sign(an_integer)
	if an_integer == 000
		break
	end
end
