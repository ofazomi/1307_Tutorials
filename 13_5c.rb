#new is to Class as initialize is to @instance

class Dragon

	def initialize name
		@name = name
		@asleep = false
		@hungrynow = 10
		@poo = 0

		puts "#{@name} is born."
	end

	def feed
		p "You feed #{@name}."
		@hungry = 10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}."
		@poo = 0
		passage_of_time
	end

	def bedtime
		p "You put #{@name} to bed."
		@asleep = true
		3.times do 
			if @asleep
				passage_of_time
			end

			if @asleep
				p "#{@name} snores, filling the room with smoke."
			end
		end
		if @asleep 
			@asleep = false
			puts "#{@name} wakes up slowly."
			end
	end

	def toss
		p "You toss #{@name} into the air."
		p "Giggles, which singes your eyebrows."
		passage_of_time
	end

	def rock
		p "You rock #{@name} gently."
		@asleep = true
		p "#{@name} dozes off..."
		passage_of_time
		if @asleep
			@asleep = false
			p " ...but wakes when you stop."
		end
	end

	private
	def hungry?
		@hungrynow <=2
	end

	def poopy?
		@poo >= 8
	end
	def passage_of_time
		if @hungrynow > 0
			@hungrynow = @hungrynow - 1
			@poo = @poo + 1
		else
			if @asleep
				@asleep = false
				p "#{@name} wakes up suddenly!"
			end
			p "#{@name} is starving. #{@name} ate your hand."
			exit
		end

		if @poo >= 10
			@poo = 0
			p "Oops. You are covered in poo."
		end

		if hungry?
			if @asleep
				@asleep = false
				p "#{@name} wakes up suddenly!"
			end
			p "#{@name}'s stomach growls."
		end

		if poopy?
			if @asleep
				@asleep = false
				p "#{@name} wakes up suddenly!"
			end
			p "#{@name} needs a diaper, quickly!."
		end
	end
end				

p "You've got a pet dragon!"
p "Give it a name."
dragon_name = gets.chomp
pet = Dragon.new dragon_name

p "You can feed [1], play with [2], "
p "walk [3], rock [4], put #{dragon_name} "
p "to bed [5], or abandon it [0]."
p

action = 6

while action == 6

	p "What would you like to do?"
	action = gets.chomp.to_i


	if action == 1
		pet.feed
	elsif action == 2
		pet.toss
	elsif action == 3
		pet.walk
	elsif action == 4
		pet.rock
	elsif action == 5
		pet.bedtime
	elsif action == 0
		p "#{@name} dies."
	else
		p "Please tell me what you would like to do."
	end

	action = 6
end
