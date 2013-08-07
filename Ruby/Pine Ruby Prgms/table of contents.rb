line_width = 30
puts ('Table of Contents'.center(line_width*1.5))
puts ('Chapter 1: Getting Started'.ljust(line_width)) + ('page 1'.rjust(line_width/2))
puts ('Chapter 2: Numbers'.ljust(line_width)) + ('page 9'.rjust(line_width/2))
puts ('Chapter 3: Letters'.ljust(line_width)) + ('page 13'.rjust(line_width/2))

puts
puts


chapters = ['Chapter 1: Getting Started' , 'Chapter 2: Numbers' , 'Chapter 3: Letters']
pages = ['page 1' , 'page 9', 'page 13']

line_width = 30

puts ('Table of Contents'.center(line_width*1.5))

chapters.each do |ch|
	puts ch.ljust(line_width)
	
end
