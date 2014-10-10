class Game

	attr_accessor :choice

	def initialize
		@choice ||= []
	end

	def choice
		%w(rock paper scissors)
	end

	def player_turn
		
	end
		

	def randomiser
		choice.sample
	end

end