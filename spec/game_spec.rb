require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  context '#player_1' do

    it "gets the first player" do
      expect(game.player_1).to eq(player_1)
    end
  end

  context '#player_2' do

    it "gets the second player" do
      expect(game.player_2).to eq(player_2)
    end
  end

  context '#attack' do

    it "damages an opponent" do
      # allow(sri_spy).to receive(:attack).with(player_name)
      expect(player_2).to receive(:reduce_hp)
      game.attack(player_2)
    end

    # it "raises an error message when player 2's hp reaches 0" do
    #   allow(player_2).to receive(:reduce_hp).once
    #   5.times{game.attack(player_2)}
    #   expect {game.attack(player_2)}.to raise_error "You killed Player 2!"
    # end
  end
end
