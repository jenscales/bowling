require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../bowling_game'

describe BowlingGame do
	let(:game) { BowlingGame.new}

	describe '.initialize' do
		it 'sets @rolls to an empty array' do
			expect(game.rolls).to eq([])
		end
	end

	describe '#score' do
		it 'scores the game as 0 when only gutter balls are thrown' do
			20.times { game.roll(0) }

			expect(game.score).to eq(0)
		end
		it 'scores the game as 20 when one pin is knocked down on each roll' do
			20.times { game.roll(1) }

			expect(game.score).to eq(20)
		end
	end	
end










# describe Pizza::Pie do
# 	describe '.initialize' do
# 		it 'records all of the toppings' do
# 			toppings = [
# 			Pizza::Topping.new('mushrooms', vegetarian: true),
# 			Pizza::Topping.new('pepperoni')
# 		]
# 		pizza = Pizza::Pie.new(toppings)

# 		expect(pizza.toppings).to eq(toppings)
# 		end
# 		it 'defaults the toppings to cheese only, if the pizza has no toppings' do
# 				pizza = Pizza::Pie.new

# 				expect(pizza.toppings.size).to eq(1)
# 				expect(pizza.toppings.first.name).to eq('cheese')
# 		end
# 	end
# end 

# describe Pizza::Topping do
# 	describe 'initialize' do
# 		it "sets the name of the topping" do
# 			topping = Pizza::Topping.new('olives')

# 			expect(topping.name).to eq('olives')
# 		end
# 		it "sets whether or not the topping is vegetarian" do	
# 			topping = Pizza::Topping.new 'bell peppers', vegetarian: true

# 			expect(topping.vegetarian).to eq(true)
# 		end
# 	end
# end