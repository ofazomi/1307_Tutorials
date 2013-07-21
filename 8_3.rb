
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
puts
puts wordArray.sort
puts
puts 'Ta da!'

