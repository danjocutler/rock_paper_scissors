class Game

	def choice
		[:rock, :paper, :scissors]
	end

	def computer_turn
		choice.sample
	end

	GESTURES = {rock: :scissors, paper: :rock, scissors: :paper}

	def play(choice_one, choice_two)
		if choice_one == choice_two 
			"It's a draw!"
		elsif 
			GESTURES[choice_one] == choice_two
			"Player wins!"
		else
			"Computer wins!"
		end
	end
end