require 'game'

describe Game do

	let(:game) {Game.new}

	xit "should let the computer randomly choose 'Rock', Paper', or 'Scissors'" do
		expect(game.randomiser).to eq []
	end

end