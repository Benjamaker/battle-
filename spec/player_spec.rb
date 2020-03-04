require 'player'

describe Player do

  subject(:ben) { Player.new("Ben") }

  it "has a method that returns the player's name" do
    expect(ben.player_name).to eq("Ben")
  end
end
