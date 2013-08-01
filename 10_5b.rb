puts 'How many bottles of beer are there on the wall?'
num = gets.chomp.to_i
sleep 1
puts 'Cool. Let\'s sing a song.'
puts ''
sleep 1

#----------SPELLING OUT NUMBERS----------
def english_number number
  if number < 0
		return 'Wait! Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
		end

#no more special cases- no more returns

#this is the return string
num_string = ''

ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

#'left' is how much of the number we still have left to write out
#'write' is the part we are writing out now
# write and left... get it? :) ha ha ha ha

left = number

#how many trillions are left?
write = left/1000000000

#strip out those 100s
left = left - (write * 1000000000)

if write >= 10000000
	trillions = english_number write
	num_string = num_string + trillions + ' trillion'

	if left > 0
	#space between parts
	num_string = num_string + ' '
	end
end

#how many millions are left?
write = left/1000000

#strip out those 100s
left = left - (write * 1000000)

if write >= 10000 && write < 10000000
	millions = english_number write
	num_string = num_string + millions + ' million'

	if left > 0
	#space between parts
	num_string = num_string + ' '
	end
end

#how many thousands are left?
write = left/1000

#strip out those 1000s
left = left - (write * 1000)

if write >= 10 && write < 10000
	thousands = english_number write
	num_string = num_string + thousands + ' thousand'

	if left > 0
	#space between parts
	num_string = num_string + ' '
	end
end

#how many hundreds are left?
write = left/100

#strip out those 100s
left = left - (write * 100)

if write > 0 && write < 10
	hundreds = english_number write
	num_string = num_string + hundreds + ' hundred'

	if left > 0
	#space between parts
	num_string = num_string + ' '
	end
end

#how many tens are left?
write = left /10

#strip out those 10s
left = left - (write * 10)

if write > 0
	#teenager exception
	if ((write == 1) && (left > 0))
		num_string = num_string + teenagers[left-1]
		#the '-1' is because teenagers[3] is 'fourteen', not 'thirteen'
		#since we took care of the digit in the ones place already, we have nothing left to write
		left = 0
	else
		num_string = num_string + tens_place[write-1]
		#again, the '-1' deals with the case of 0-position bump
	end

	if left > 0
		#add hyphen
		num_string = num_string + '-'
	end
end

write = left
left = 0

if write > 0
	num_string = num_string + ones_place[write-1]
	#'-1' is the 0-position bump again
end

num_string
end

#----------SONG SINGING----------
while num >= 3
	puts english_number(num).capitalize + ' bottles of beer on the wall, ' + english_number(num) + ' bottles of beer-'
	puts 'Take one down, pass it around-'
	num = num - 1
	puts english_number(num).capitalize + ' bottles of beer on the wall!'
	puts ''
	sleep 6

	if num == 2
		puts english_number(num).capitalize + ' bottles of beer on the wall, ' + english_number(num) + ' bottles of beer-'
		puts 'Take one down, pass it around-'
		num = num - 1
		puts 'One bottle of beer on the wall!'
		sleep 6

		puts ''

		puts 'One bottle of beer on the wall, one bottle of beer-'
		puts 'Take it down, pass it around-'
		puts 'No more bottles of beer on the wall!'
		puts ''
		puts ''
		puts ''
		sleep 7
		puts '(What a bunch o\' drunks.)'
		puts ''

		break
	end
end
