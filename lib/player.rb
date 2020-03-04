class Player

  DEFAULT_HP = 60
  attr_reader :player_name, :hp

  def initialize(player_name, hp = DEFAULT_HP)
    @player_name = player_name
    @hp = hp
  end

  def reduce_hp
    @hp -= 10
  end

  def attack(player)
    player.reduce_hp
  end


end
