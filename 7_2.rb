puts 'Yo, what\'s yer name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Otto'
  puts 'What a delightful name!'
end

puts 'I\'m a fortune teller. Tell me your real name.'
name = gets.chomp

if name == 'Otto'
	puts 'Liar.'
else
	puts 'Oh, my! What a fabulous future awaits you, ' + name + '!'
end

	puts ''

	puts 'Hello, and welcome to seventh grade English.'
	puts 'My name is Mrs. Hand. And your name is... ?'
	name = gets.chomp
	if name == name.capitalize
		puts 'Please take a seat, ' + name + '.'
	else
		# power trip begins
		puts name + '? You mean ' + name.capitalize + ', right?'
		puts 'Don\'t you even know how to spell your name?'
		reply = gets.chomp

			if reply.downcase == 'bitch'
				puts 'What was that?!'
				# power trip escalates and you aren't helping matters
				reply2 = gets.chomp
				if reply2.downcase == 'nothing'
					# stand down, student
					puts 'Sit down, ' + name.capitalize + '.'
				else
					# your mother cries, doesn't she
					puts 'GET OUT!'
				end
			elsif reply.downcase == 'yes'
				# it's not worth it anyway
				puts 'Take a seat, ' + name.capitalize + '.'
			else
				# just go directly to college
				puts 'Go. Get out.'
			end
	end
