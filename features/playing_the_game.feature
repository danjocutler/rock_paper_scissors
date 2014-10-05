Feature: Playing the game
	In order to play against the computer
	As a human player
	I want to beat the computer by selecting the winning piece

	Scenario: Human turn
		Given I am on the game screen
		When I choose "Rock", "Paper", or "Scissors"
		Then I should see "computer's move"