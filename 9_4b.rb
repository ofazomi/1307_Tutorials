def say_moo number_moo
puts 'moooooo...'* number_moo
'quiddich'
end

x = say_moo 3
puts x.capitalize + ', girlfriend...'
puts x + '.'


def fav_food name
  if name == 'Pie'
		return 'corn dog'
	end

	if name == 'Molly'
		return 'filet'
	end

	if name == 'Doug'
		return 'diet pepsi'
	end

	'hard to say, perhaps salad?'
end

def fav_drink name
	if name == 'Picard'
		'tea, Earl Grey, hot'

	elsif name == 'Beverly'
		'Oh, Jean-Luc, what does it matter!'

	else
		'I\'m thinking black coffee.'
	end
end

puts fav_food('Pie')
puts fav_food('Molly')
puts fav_food('Doug')
puts fav_food('Lauren')
puts fav_drink('Picard')
puts fav_drink('Oprah')
puts fav_drink('Beverly')
