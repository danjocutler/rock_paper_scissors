require 'game'

describe Game do

	let(:game) {Game.new}
	let(:player) {double :player}

	it 'should have an array of 3 choices (rock, paper, scissors)' do
		expect(game.choice.count).to eq 3
	end

	it "should let the player choose 'Rock', Paper', or 'Scissors'" do
		
	end
	
	xit "should let the computer randomly choose 'Rock', Paper', or 'Scissors'" do
		expect(game.randomiser).to eq "rock"
	end


end