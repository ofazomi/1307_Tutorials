var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP  A magic spell?'
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts ''

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'
puts 'Wait- that\'s not right! I meant to calculate the letters in your name.'
puts 'Let\'s try that again, shall we?'
puts 'What is your first name?'
firstName = gets.chomp
puts 'How about a middle name?'
middleName = gets.chomp
puts 'And last?'
lastName = gets.chomp
puts 'Cool. Gimme a sec...'
puts ''
lettersName = firstName.length.to_i + middleName.length.to_i + lastName.length.to_i
puts '... um, ok. There are ' + lettersName.to_s + ' letters in your name.'
puts 'Ta da! Be impressed.'
