require 'game'

describe Game do

	let(:game) {Game.new}

	context 'setup' do

		it 'should have an array of 3 choices (rock, paper, scissors)' do
			expect(game.choice.count).to eq 3
		end
		
		it "should let the computer randomly choose 'Rock', Paper', or 'Scissors'" do
			expect(game.computer_turn).not_to be_a String
		end
	end

	context "results" do

		it "same choices should result in a draw" do
				expect(game.play(:rock, :rock)).to eq "draw"
		end

		it "rock should beat scissors" do
			expect(game.play(:rock, :scissors)).to eq "Player wins"
		end

		it "paper should beat rock" do
			expect(game.play(:paper, :rock)).to eq "Player wins"
		end

		it "scissors should beat paper" do
			expect(game.play(:scissors, :paper)).to eq "Player wins"
		end

		it "scissors should not beat rock" do
			expect(game.play(:scissors, :rock)).to eq "Computer wins"
		end

		it "rock should not beat paper" do
			expect(game.play(:rock, :paper)).to eq "Computer wins"
		end

		it "paper should not beat scissors" do
			expect(game.play(:paper, :scissors)).to eq "Computer wins"
		end
	end
end