require 'pry'

class Tree
	attr_accessor :fruit, :age

	def initialize(fruit, age)
		@fruit = 0
		@age = 0
	end

	def age
		@age = @age + 1
	end

	def fruit(age)
		if @age < 5
			p "Tree is #{age} years old, no fruit this year."
		elsif @age >= 5 && @age < 10
			p "Tree is #{age} years old. #{age*12} fruit this year."
		else
			p "Tree has died."
		end
	end

	def pick (age)
		if @age >= 5 && @age < 10
		p "How much fruit would you like? (number)"
		pick = gets.chomp
			if pick.to_i >= age*12
				puts "Here's all the fruit."
				pick = age*12
			elsif pick.to_i == 0
				puts "No fruit for you."
			else
				puts "Here's your #{pick.to_i} fruit."
			end
			sleep 1
			puts "Winter's coming. #{age*12 - pick.to_i} fruit fall to the ground."
		end
	end
end


orange = Tree.new(0,0)

years = 0
	
while years < 11
	x = orange.age
	orange.fruit(x)
	orange.pick(x)
	years = years + 1
end

