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

puts ''

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

puts ''

line_width = 50
puts ('Old Mother Hubbard'.center(line_width))
puts ('Sat in her cupboard'.center(line_width))
puts ('Eating her curds and whey'.center(line_width))
puts ('When along came a tiger'.center(line_width))
puts ('Who sat down beside her'.center(line_width))
puts ('And Ol\' Mother wondered'.center(line_width))
puts ('How the hell...'.center(line_width))
puts ('I mean, the door was closed.'.center(line_width))

puts ''

line_width = 40
str = '--> text <--'
puts(str.ljust(line_width))
puts(str.center(line_width))
puts(str.rjust(line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))

