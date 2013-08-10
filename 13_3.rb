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
end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

puts Die.new.showing
