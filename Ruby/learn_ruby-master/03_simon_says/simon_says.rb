def echo str
	return str
end

def shout str
	return str.upcase
end

def repeat str, number = 2
	str_ary = []
	number.times {str_ary << str}
	str_ary.join " "
end

def start_of_word str, number
	letters = str.split ""
	if number == nil
		letters.first
	else 
		selection = letters.first(number)
		selection.join
	end
end

def first_word str
	words = str.split " "
	words.first
end

def titleize str
	words = str.split " "

	words.map! do |w| 
		if (w.length > 4) || ((words.first == w) || (words.last == w))   # I chose to use the rule "words greater than 4 characters , unless first or last" rule 
			w.capitalize!										    #  to avoid building a huge array full of little words. 
		else w 													
		end
	end
	title = words.join " "
end
