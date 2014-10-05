class Game

	attr_accessor :choice

	def initialize
		choice ||= []
	end

	def choice
		%w(rock paper scissors)
	end

	def randomiser
		shuffle.first
	end

end