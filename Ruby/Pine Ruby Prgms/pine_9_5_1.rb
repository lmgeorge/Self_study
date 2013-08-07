
def ask (question)
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == "yes" || reply == "no")
			if reply == "yes"
				return true
			else
				return false
			end
		else
			puts "Please answer 'yes' or 'no'."
		end
	end
end
foods = ["tacos", "burritos", "chimichangas", "sopapillas", "horchata", "flautas"]
puts "Thanks for taking my questionnaire!"
puts

ask("Do you like " + foods[0] + "?")
ask ("Do you like " + foods[1] + "?")
wets_bed = ask("Do you wet the bed?")
ask("Do you like " + foods[2] + "?")
ask("Do you like " + foods[3] + "?")
ask("Do you like " + foods[4] + "?")
ask("Do you like " + foods[5] + "?")
puts
puts "Debriefing"

puts wets_bed