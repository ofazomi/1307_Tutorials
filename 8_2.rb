foods = ['cheese', 'bread', 'pesto']

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join('  :)  ') + '  8)'

20.times do
  puts []
	end

5.times do
	puts foods
	end

puts

	favorites = []
	favorites.push 'raindrops on roses'
	favorites.push 'whiskers on kittens'
	favorites.push 'bright copper kettles'
	favorites.push 'warm woolen mittens'
	favorites.push 'brown paper packages tied up with string'

	puts favorites
	puts favorites[0]
	puts favorites.last
	puts favorites.length

	puts favorites.pop
	puts favorites
	puts favorites.length
