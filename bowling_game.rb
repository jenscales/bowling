class BowlingGame
	attr_accessor :rolls

	def initialize
		@rolls = []
	end

	def roll(pins)
		@rolls.push(pins)
	end


	# Returns the Integer score for this game. Expects to be run after all rolls
	# for the game have been recorded.
	def score
		@rolls.reduce(:+)
	end

end









# module Pizza
#   class Pie
#   	attr_accessor :toppings

#   	def initialize(toppings = (Topping.new('cheese'))
#   		@toppings = toppings

#   	end
#   end

#   class Topping
#   	attr_accessor :name, :vegetarian

#   	def initialize(name, vegetarian: false)
#   		@name = name
#   		@vegetarian = vegetarian
#   	end
#   end
# end