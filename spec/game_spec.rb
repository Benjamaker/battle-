require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  # let(:player_2_spy) { spy(:player) }

  it "starts as player_1 as default" do
    expect(game.current_turn).to eq(player_1)
  end

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

  context '#switch_turns' do

    # before do
    #   allow(player_2).to receive(:reduce_hp)
    # end

    it "switches turns" do
      game.switch_turns
      expect(game.current_turn).to eq(player_2)
    end
  end

end
