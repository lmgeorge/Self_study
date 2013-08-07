require 'csv'
require 'sunlight/congress'
require 'erb'
require 'date'

Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

def clean_zipcode zipcode
	zipcode.to_s.rjust(5, "0")[0..4]
end

def legislators_by_zipcode zipcode
	legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)
end

def save_thank_you_letters id, form_letter
	Dir.mkdir("output") unless Dir.exists? "output"
	filename = "output/thanks_#{id}.html"
	File.open(filename, 'w') do |file|
		file.puts form_letter
	end
end

def clean_phone_number phone_number
	clean_number = phone_number.to_s.scan(/\d+/).join("")

	if (clean_number.length < 10) || (clean_number.length > 11)
		"#{phone_number} is a bad number!"
	elsif (clean_number.chr == "1" && clean_number.length == 11)
		clean_number.ljust(10)[1..11]
	else clean_number.length == 10
		clean_number
	end
end

def peak_reg_hour file_contents
	frequencies = Hash.new(0)
	file_contents.each do |row|
		date_time = DateTime.strptime(row[:regdate], '%D %R')
		frequencies[date_time.hour] += 1
	end
	frequencies = frequencies.sort_by {|a, b| b}
	frequencies.reverse!
	frequencies.each {|hour, frequency| puts "#{hour}:00 : #{frequency} attendees registered"}
end

def peak_reg_day file_contents
	frequencies = Hash.new(0)
	days_of_week = { 0 =>'Sun', 1 => 'Mon', 2 => 'Tue', 3 => 'Wed', 4 => 'Thu', 5 => 'Fri', 6 => 'Sat'}
	file_contents.each do |row|
		date_time = DateTime.strptime(row[:regdate], '%D %R')
		frequencies[date_time.wday] += 1
	end
	frequencies = frequencies.sort_by {|a, b| b}
	frequencies.reverse!
	frequencies.each {|day, frequency| puts "#{days_of_week[day]} : #{frequency} attendees registered"}
end


puts "EventManager Initialized"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

template_letter = File.read "form_letter.erb"
erb_template = ERB.new template_letter

contents.each do |row| 
	id = row[0]
	name = row[:first_name]
	zipcode = clean_zipcode(row[:zipcode])

	legislators = legislators_by_zipcode(zipcode)


	form_letter = erb_template.result(binding)

	save_thank_you_letters(id, form_letter)
end

# Iteration 1 : Clean Phone Numbers
contents.each do |row|
	phone_number = clean_phone_number(row[:homephone])
	puts "#{phone_number}"
end

#Iteration 2: Time Tageting 
peak_reg_hour(contents)

#Iteration 3 : Day of Week Targeting
peak_reg_day(contents)
