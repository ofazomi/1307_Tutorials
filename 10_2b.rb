puts 'Let\'s alphabetize! Please give me some words:'

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

#----------SOLUTION 2 (trying book solution)----------
def sort array
	newSort array, []
end

# sets a loop for sorting

def newSort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end

	small = unsorted.pop
	leftUnsorted = []
	
	unsorted.each do |word|	
		if word < small
			leftUnsorted.push small
			small = word
		else
			leftUnsorted.push word
		end
	end

	sorted.push small
	newSort leftUnsorted, sorted
end

puts 'Ta da!'
sleep 1
puts
puts (sort wordArray)
