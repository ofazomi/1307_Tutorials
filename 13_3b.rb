class Die
	def initialize
		# I'll just roll the die, though we could do something else
		#if we wanted to, such as setting the die to have 6 showing
		roll
	end
	
	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end

	def set
		6
	end
end

die = Die.new
die.roll
puts die.set
die.roll
puts die.showing

puts Die.new.showing

## note to self: I do not understand what Pine meant by 
#"show the side" and there was not an example solution
