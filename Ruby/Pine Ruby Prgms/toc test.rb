ch = ['Chapter 1: Getting Started' , 'Chapter 2: Numbers' , 'Chapter 3: Letters']
pg = ['page 1' , 'page 9', 'page 13']

line_width = 30

puts ('Table of Contents'.center(line_width*1.5))
puts 

puts ch [0] + pg [0].rjust(line_width/2)
puts ch [1] + pg [1].rjust(line_width/2)
puts ch [2] + pg [2].rjust(line_width/2)