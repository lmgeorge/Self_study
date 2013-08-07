=begin
def silly_sum(numbers)
	
end

numbers = (1..3).to_a

silly_sum(numbers)
=end
=begin
def num_squares(num)
	square_nums = []
	num.downto(0) {|n|  square_nums << n if n/Math.sqrt(n) == Math.sqrt(n)}
	puts square_nums
end
=end

#=begin
def silly_nums(num)
	num.downto(0) {|n| puts n if n < num && !(n%5 == 0 && n%3 == 0) && (n%5 == 0 || n%3 == 0)}
end
puts silly_nums(25)
#=end
