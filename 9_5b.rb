puts 'Please provide a positive integer between'
puts '0 and 3000 to be converted to roman numerals.'


num = gets.chomp

#test for integer and for postive number
while  (num.to_i != num.to_f) || (num.to_i < 0)
	puts 'A positive integer please.'
	num = gets.chomp
end

#test for large number
while num.to_i > 3000
	puts 'Try again and keep it under 3000.'
	num = gets.chomp
end


#hack off weirdness and extract a number
num = num.to_i
if num == 0 
	puts 'Yeah, letters don\'t work.'
	#assigns number 237
	num = num + 237
end


#lets user know where we're starting
puts 'Ok, we\'re going with '  + num.to_s + '.'
sleep 1
puts 'Drum roll, please...'


#pulls a copy of the number for later
num2 = num


#pulls off arabic numeral into base 10 slots
num = num.to_s
array = (num.split(//))

#prints array to verify everything is ok
#puts array

#snags multipliers & converts to integers
romI = array.pop
romI = romI.to_i

romX = array.pop
romX = romX.to_i

romC = array.pop
romC = romC.to_i

romM = array.pop
romM = romM.to_i

#prints as arabic-roman
puts 'Old school base10 roman:'
puts ('M' * romM) + ('C' * romC) + ('X' * romX) + ('I' * romI)


#prints with 5 values
if romI > 4
	romV = 1
	romI = romI - 5
else
end

if romX > 4
	romL = 1
	romX = romX - 5
else
end

if romC > 4
	romD = 1
	romC = romC - 5
else
end

puts 'Old school roman:'
puts ('M' * romM.to_i) + ('D' * romD.to_i) + ('C' * romC.to_i) + ('L' * romL.to_i) + ('X' * romX.to_i) + ('V' * romV.to_i) + ('I' * romI.to_i)


#old school alernate method
num = num2

romM = num/1000
num = num%1000
romD = num/500
num = num%500
romC = num/100
num = num%100
romL = num/50
num = num%50
romX = num/10
num = num%10
romV = num/5
num = num%5
romI = num/1

puts 'Old school roman (alternate method):'
puts ('M' * romM) + ('D' * romD) + ('C' * romC) + ('L' * romL) + ('X' * romX) + ('V' * romV) + ('I' * romI)


#new school
num = num2

romM = num/1000
if num%1000 == 999
	romNum = 'I' + ('M' * (romM+1))
	
else
	num = num%1000
	romD = num/500
		if num%500 == 499
			romNum = romNum + 'I' + ('D' * (romD+1))
		
		else
			num = num%500
			romC = num/100
				if num%100 == 99
				romNum = romNum + 'I' + ('C' * (romC+1))
				
				else
					num = num%100
					romL = num/50
						if num%50 == 49
						romNum = romNum + 'I' + ('L' * (romL+1))
						
					else
						num = num%50
						romX = num/10
						if num%10 == 9
							romNum = romNum + 'I' + ('X' * (romX+1))
							
						else
							num = num%10
							romNum = romNum + ('I' * num.to_i)
						end
					end
				end
		end
end


puts 'New school:'
puts romNum
