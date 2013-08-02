string = 'You have excellent taste in socks.'

puts "Hello, love. My name is Edgar."
puts "I'm extremely perceptive."
puts "And also, I'm dead."
puts
print "What's your name?" 
sleep 3
print " I'm not perceptive enough to know."

puts
name = gets.chomp
puts "Hello, #{name}."

if name[0] == 'M'
  puts string
	puts '  I can just tell.'
elsif name [1] == 'h'
	puts 'You are incredibly disciplined.'
else end

	puts 'Gotta go now. Bye.'

puts "Wait! Your #{string[28,5]} rock!"
puts "Seriously, you rock polka dot #{string[28..32]}!"
