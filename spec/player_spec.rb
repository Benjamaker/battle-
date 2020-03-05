require 'player'

describe Player do

  subject(:ben) { Player.new("Ben") }
  subject(:sri) { Player.new("Sri") }

  # let(:sri_spy) { spy(:sri) }

  context '#player_name' do

    it "has a method that returns the player's name" do
      expect(ben.player_name).to eq("Ben")
    end
  end

  context '#reduce_hp' do

    it "reduces the HP of player 2 by 10" do
      expect{sri.reduce_hp}.to change{sri.hp}.by -10
    end
  end

  context '#hp' do

    it "returns the player's hp" do
      expect(ben.hp).to eq Player::DEFAULT_HP
    end

  end  



end
