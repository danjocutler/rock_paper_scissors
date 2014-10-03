Feature: Starting the game
	In order to play Rock, Paper, Scissors
	As a Makers Academy Marketeer
	I want to start a new game

	Scenario: Registering
		Given I am on the homepage
		When I follow "Enter, if ye dare..."
		Then I should see "You got a name, or what?"