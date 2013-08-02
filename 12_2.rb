
#----------BILLION SECS / SPANKS----------
puts
puts '--------------------'
puts
#get the info
puts 'birth year?'
  year = gets.chomp.to_i

puts 'birth month? - numbers please'
	month = gets.chomp
	month = month.to_i
	if month > 12 || month < 1
		puts 'I\'m going with June.'
		month = 6
	else end

puts 'birth day? - again, numbers'
puts '(I gotta finish up this tutorial!)'
	day = gets.chomp
	day = day.to_i
	if day > 31 || day < 1
		puts 'I\'m going with the 15th.'
		day = 15
	else end

#how old are you, really
birthday = Time.local(year, month, day)
now = Time.new
old = (now - birthday)

#billion seconds
billionSecs = birthday + 1000000000

if (birthday + old) > billionSecs
	puts "Wow, you crossed the billion second mark at #{billionSecs}."
else
	puts "You will become a billion seconds old #{billionSecs}."
end

#how old / spanks
spanks = ((old)/60/60/24/365).to_i
puts "Incidentally, you are #{spanks} years old."

puts "Here are your birthday spanks: "

while spanks > 0
	puts 'SPANK!'
	spanks = spanks-1
	sleep 1
end

puts "and one to grow on...  SPANK!"
