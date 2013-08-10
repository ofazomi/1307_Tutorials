Dir.chdir '/home/ofazomi/Desktop/programs'
puts Dir.pwd


b_day = {}
comma = 0
b = []

File.open('bday.txt') do |file|

  file.each_line do |b|
		b = b.chomp
	end
	file.close


	while b[comma] != ',' &&
		comma < b.length
		comma = comma + 1
	end

	name = b[0..(comma - 1)]
	date = b[-12..-1]
	b_day[name] = date
end

puts 'Lookup?'

name = gets.chomp
date = b_day[name]

if date == nil
	puts "Nope. Not in the database."
else
	put date [0..5]
end
