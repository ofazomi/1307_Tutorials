puts 'Say hi to grandma.'
higma = gets.chomp
bye_count = 2

while bye_count > 0

  while higma != ('BYE'||'BYE!')
		if higma != higma.upcase
			puts 'HUH?! SPEAK UP!'
			higma = gets.chomp
 
		else
			puts 'NO, NOT SINCE ' + ((rand(21))+1929).to_s + '!'
			higma = gets.chomp
		end

	end

bye_count = bye_count -1
puts 'WHAT?'
higma = gets.chomp
end

puts 'BYE, DEAR!'
