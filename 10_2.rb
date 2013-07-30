puts 'Let\'s alphabetize! Please give me some words:'

#get words
wordArray = []

while true

  word = gets.chomp

	if word.to_i.to_s == word
    	puts 'Come on, goof, a word, please.'
    
    elsif word == ''
    	break

    else
    	wordArray.push word
    	puts
		puts 'Here\'s what you have so far:'    
		puts wordArray
		puts
		puts 'More? (Hit enter again to end.)'
	end
end


puts 'Drum roll please.'
sleep 1
puts

#---------SOLUTION 1 (self)---------- 
def ABCorder words
	bin = []
	ordered = []

	#get a word and call it smallest
	smallest = words.pop

	while words.length > 0
		#get another word
			compare = words.pop
		#compare smallest and the other word
		if smallest > compare
			#hold the larger word in a bin for later
			bin.push compare
		else
			#hold the larger word in a bin for later
			bin.push smallest
			#smaller word is now called smallest
			smallest = compare
		end

	#any words left? if yes, get another word

			
	#if no
	end

#save smallest word in a special file
ordered.push smallest


#check you bin for words
while bin.length > 0
	ABCorder bin
end

while ordered.length > 0
	puts ordered.pop
end


end

ABCorder (wordArray)

puts 
sleep 1
puts 'Ta da!'
