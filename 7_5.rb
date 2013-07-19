puts 'How many bottles of beer are there on the wall?'
num = gets.chomp.to_i
puts 'Cool. Let\'s sing a song.'
puts ''

while num >= 3
  puts num.to_s + ' bottles of beer on the wall, ' + num.to_s + ' bottles of beer'
	puts 'Take one down, pass it around'
	num = num - 1
	puts num.to_s + ' bottles of beer on the wall!'
	puts ''

	if num == 2
		puts num.to_s + ' bottles of beer on the wall, ' + num.to_s + ' bottles of beer'
		puts 'Take one down, pass it around'
		num = num - 1
		puts num.to_s + ' bottle of beer on the wall!'

		puts ''

		puts '1 bottle of beer on the wall, 1 bottle of beer'
		puts 'Take it down, pass it around'
		puts 'No more bottles of beer on the wall!'
		puts ''
		puts ''
		puts ''
		puts 'bunch o\' drunks'
		puts ''

		break
	end
end
