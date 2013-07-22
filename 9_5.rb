# question method defined here
def ask question
  while true
		puts question
		reply = gets.chomp.downcase
		return true if reply == 'yes'
		return false if reply == 'no'
		puts 'Please answer "yes" or "no"'
		
	end
end

# questions asked here
puts 'Hello, and thank you for...'
puts
ask 'Do you like to eat tacos?'
ask 'How about burritos?'

# booger questions saved to new variables for later use
picks_nose = ask 'Do you pick your nose?'
eats_boogers = ask 'Do you eat your boogers?'

# more questions asked here
ask 'Do you like to eat chimichangas?'
puts 'Just a few more questions...'
ask 'Do you like to eat falutas?'
ask 'Do you like to eat quesadillas?'
puts 'Thanks, no more questions.'

sleep 1

# booger debrief here
puts
puts 'picks nose: '
	
	if picks_nose == true
		puts 'Eehw, you pick your nose?!'
	else
		puts 'Good! Picking your nose is gross.'
	end

puts 'eats boogers: '
	
	if eats_boogers == false
		puts 'Good to hear you do not eat boogers!'
	else
		puts 'Disgusting! And salty!'
	end
puts
