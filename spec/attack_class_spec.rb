require 'attack_class'

describe Attack do

  subject(:attack) { described_class.new(player_1, player_2) }

  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  context '#attack' do

    it "damages an opponent" do
      # allow(player_2_spy).to receive(:attack).with(player_name)
      expect(player_2).to receive(:reduce_hp)
      attack.attack
    end
  end

  

end
