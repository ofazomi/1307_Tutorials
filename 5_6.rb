puts 'Howdy! What\'s yer first name?'
firstName = gets.chomp
puts 'Got a middle name there? If not, just make one up.'
middleName = gets.chomp
puts 'Hows about your family name?'
lastName = gets.chomp
puts 'Greetings ' + firstName + ' ' + middleName + ' ' + lastName + '!'
puts 'If we were in Asia, I would call you ' + lastName + ' ' + firstName + ' ' + middleName + '.'

puts ' '

puts 'So, do you have a favorite number? What it it?'
number = gets.to_i
numberBigger = number + 1
puts 'A way better choice is: ' + numberBigger.to_s + '.'
