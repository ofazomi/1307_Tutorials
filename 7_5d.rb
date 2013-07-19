puts 'Here is my favorite parlor game.'
sleep 2
puts 'Name a year, any year.'
num = gets.chomp

while num.to_i.to_s != num
    puts 'Come on, goof, a number, please.'
    num = gets.chomp
end
    
puts 'Just a second.'
sleep 2
num = num.to_i

if (num%100 != 0 && num%4 == 0) || num%400 == 0
    puts num.to_s + ' is a leap year.'
    else puts num.to_s + ' is not a leap year.' 
    end
sleep 2

puts 'Please give me another year.'
num1 = gets.chomp

while num1.to_i.to_s != num1
    puts 'What is with the words?! Give a number, please.'
    num1 = gets.chomp
end

while num == num1.to_i
puts 'A different year that the first, joker.'
    num1 = gets.chomp
end

if num1.to_i > num.to_i
    numBig = num1.to_i
    numSm = num.to_i
    else
        numBig = num.to_i
        numSm = num1.to_i
end

puts 'Wait for it...'
sleep 2
puts 'Here are all the leap years between the years ' + numSm.to_s + ' and ' + numBig.to_s + ':'

while numSm <= numBig
    if (num%100 != 0 && num%4 == 0) || num%400 == 0
        puts numSm.to_s
        else
        end
    numSm = numSm + 1
    
end

puts 'Impressive, eh?'
