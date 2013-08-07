class Book
	attr_accessor :title
	
	def initialize
		@title
	end
	
	def title
	  t_ary  = @title.split " "
	  l_words = ["and", "of", "the", "an", "in", "a"]
	  t_ary.map do |t|
	  	 	if l_words.include?(t) &&  t_ary.first != t
	  	 		t
	  	 	else
				t.capitalize!
			end
		end
	 t_ary.join " "
	end	
end