#Roman Numerals interpreter

class Numerals

	def initialize
		@roman 		= {I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}
		@modroman	= {I: 1, IV: 4, V: 5, IX: 9, X: 10, XL: 40, L: 50, XC: 90, C: 100, CD: 400, D: 500, XM: 900, M: 1000}
	end

	def self.display_old_roman; puts @roman end

	def self.display_mod_roman; puts @modroman end

	
	def mr_ary(array,variable); array << @modroman.key(variable) end

	def or_ary(array,variable); array << @roman.key(variable) end
	
	def orn(number)
		num = []

		numd1000 = number/1000; 													  num_1000 = numd1000*1000
		numd500  = (number - num_1000)/500; 										  num_500 = numd500*500
		numd100  = (number - num_1000 - num_500)/100;								  num_100 = numd100*100
		numd50   = (number - num_1000 - num_500 - num_100)/50; 						  num_50 = numd50*50
		numd10   = (number - num_1000 - num_500 - num_100 - num_50)/10;				  num_10 = numd10*10
		numd5    = (number - num_1000 - num_500 - num_100 - num_50 - num_10)/5;		  num_5 = numd5*5
		numd1    = (number - num_1000 - num_500 - num_100 - num_50 - num_10 - num_5)
		
		numd1000.times {or_ary(num,1000)}
		numd500.times  {or_ary(num,500) }
		numd100.times  {or_ary(num,100) }
		numd50.times   {or_ary(num,50)  }
		numd10.times   {or_ary(num,10)  }
		numd5.times    {or_ary(num,5)   }
		numd1.times    {or_ary(num,1)   }
		
		num.flatten!; puts num.join		
	end

	def mrn(number)
		num = []
		
		if @modroman.has_value?(number)
			puts @modroman.key(number)
		
		else
			numd1000 = number/1000; 								num_1000 = numd1000*1000
			numd1000.times {mr_ary(num,1000)}
			
			numd100 = (number - num_1000)/100;						num_100  = numd100*100
				if 	  num_100 >= 900
				   	  mr_ary(num,900)
				elsif (500 <= num_100) && (num_100 < 900)
					  mr_ary(num,500)
					  ((num_100%500)/100).times {mr_ary(num,100)}
				elsif num_100 == 400
					  mr_ary(num,400)
				else
					  numd100.times {mr_ary(num,100)}
				end

			numd10  = (number - num_1000 - num_100)/10;		        num_10  = numd10*10
				if 	  num_10 == 90
				   	  mr_ary(num,90)
				elsif (50 <= num_10) && (num_10 < 90)
					  mr_ary(num,50)
					  ((num_10%50)/10).times {mr_ary(num,10)}
				elsif num_10 == 40
					  mr_ary(num,40)
				else
					  numd10.times {mr_ary(num,10)}
				end

			numd1   = (number - num_1000 - num_100 - num_10)
				if 	  numd1 == 9
				      mr_ary(num,9)
				elsif (5 <= numd1) && (numd1 < 9)
					  mr_ary(num,5)
					  (numd1%5).times {mr_ary(num,1)}
				elsif numd1 == 4
					  mr_ary(num,4)
				else
					  numd1.times {mr_ary(num,1)}
				end
			num.flatten!; puts num.join
		end
	end
end

test = Numerals.new
number = gets.chomp

loop do
	if number.to_i >= 4000
		puts "Sorry, I can only convert numbers less than 4,000!"
		number = gets.chomp
	elsif number == "exit"
		break
	else test.mrn(number.to_i)
		number = gets.chomp
	end
end