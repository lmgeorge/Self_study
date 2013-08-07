def translate str
	words = str.split " "
	words.map! do |w|
		if (/[aeiou]/i).match(w.chr)
			w << "ay"
		else  (/[^aeiou]/i).match(w.chr)
			 m_d  = w.match(/[^aeiou]+/i)
			 md_str = m_d.to_s
			 if (/qu/).match(w)
			    w.delete!(md_str + "u") << md_str << "uay"
			else
			    w.delete!(md_str) << md_str << "ay"
			end
		end
		# To handle punctuation
		if /[\,\.\?\!]/.match(w)
			 p_d  = w.match(/[\,\.\?\!]/)
			 pd_str = p_d.to_s
			 w.delete!(pd_str) << pd_str
		else 
			w
		end
		#To handle capitalization
		if  w != words[0] && /[[:upper:]]/.match(w)
			w.downcase!
			w.capitalize!
		else
			w
		end 
	end
	words.join " "
end