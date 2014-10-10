Feature: Playing the game
	In order to play against the computer
	As a human player
	I want to beat the computer by selecting the winning piece

	Scenario: Human turn
		Given I am on the game screen
		When I click on "rock"
		Then I should be able to see "computer's move"

	Scenario: Computer turn
		Given I have made my choice
		When the computer chooses it's move
		Then I should be able to see the result