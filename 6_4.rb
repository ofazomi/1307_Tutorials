puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts ''

puts 'Let\' play with remainders!'
puts 'A / B = C'
puts 'Gimme A'
aNum = gets.chomp.to_i
puts 'Gimme B'
bNum = gets.chomp.to_i
cNum = aNum/bNum
rNum = aNum%bNum
puts aNum.to_s + ' divided by ' + bNum.to_s + ' = ' + cNum.to_s + ' with a remainder of ' + rNum.to_s + '.'

puts ''
 
puts (5-2).abs
puts (2-5).abs
