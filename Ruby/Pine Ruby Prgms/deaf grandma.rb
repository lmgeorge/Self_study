puts 'Talk to grandma, sweety.'
	
while true
	reply = gets.chomp
	
	if reply == reply.upcase
		puts 'NO, NOT SINCE ' + (rand(20) + 1930).to_s + '!'
	end
	if reply == reply.downcase || reply == reply.capitalize 
		puts 'SPEAK UP, YOUNGIN\'!'
	end
	if reply == 'BYE BYE BYE'
		puts "BYE KID!"
		break
	end
end