puts 'Say hi to grandma.'
higma = gets.chomp


while higma != ('BYE'||'BYE!')
  if higma != higma.upcase
		puts 'HUH?! SPEAK UP!'
		higma = gets.chomp
 
	else
		puts 'NO, NOT SINCE ' + ((rand(21))+1929).to_s + '!'
		higma = gets.chomp
	end

end

puts 'BYE, DEAR!'
