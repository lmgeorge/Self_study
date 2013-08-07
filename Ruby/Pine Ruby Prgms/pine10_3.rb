#Sorting algorithm

def sort(array)
	rec_sort(array, [])
end

def rec_sort(unsorted_array, sorted_array)
	while true
		sorted_array << unsorted_array.min
		unsorted_array.delete(unsorted_array.min)
	break if unsorted_array.empty? == true
	end
	puts sorted_array
end

array = []
loop do |x|
	x = gets.chomp
	array << x 
	break if x == ""
end

sort(array)