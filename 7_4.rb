puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name.downcase == ('yolanda'||'sandra')
  puts 'What a lovely name!'
	elsif name.downcase != ('yolanda'||'sandra')
		puts name.capitalize + ', did you know that I am a bigamist?'
	end

puts ''

i_am_stuborn = true
i_am_purple = false
i_like_camping = true
i_eat_rocks = false

puts i_am_stuborn && i_like_camping
puts i_like_camping && i_eat_rocks
puts i_am_purple && i_like_camping
puts i_am_purple && i_eat_rocks

puts ''

puts i_am_stuborn || i_like_camping
puts i_like_camping || i_eat_rocks
puts i_am_purple || i_like_camping
puts i_am_purple || i_eat_rocks

puts ''

puts !i_am_purple
puts !i_am_stuborn

puts ''

while true
	puts 'Say hello to Nana, honey.'
	request = gets.chomp

	puts 'Oh, oh, oh, sweetheart! Come here...'
	puts 'Suzie'
	puts 'Mart'
	puts 'Lor'
	puts 'Carl'
	puts 'Amy'
	puts 'DeDe'
	puts 'Cheri'
	puts 'Van'
	puts 'Bron'
	puts 'Chip'
	puts 'Bud'
	puts 'Cy'
	puts 'Mike'
	puts
	if request.downcase == 'stop'
		break
	end
end
