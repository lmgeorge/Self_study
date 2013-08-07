def measure n =  1
	change = 0
	n.times do
		time1 = Time.now
		yield
		time2 = Time.now
		
		change += time2 - time1
	end
	change/n
end