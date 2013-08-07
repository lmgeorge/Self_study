def is_prime? (num)
	i = 2
	while i < num
		divisible = ((num%i) == 0)
		if divisible
			 false
		end
		i +=1
	end
	true
end

def primes (num)
	a = 2
	num_ary = (a..num).to_a
	num_ary.keep_if {|n| is_prime?(n)}
	puts num_ary
end
