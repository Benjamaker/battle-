class Attack

  attr_reader :current_turn, :opponent

  def initialize(current_turn, opponent)
    @current_turn = current_turn
    @opponent = opponent
  end

  def attack
    @opponent.reduce_hp
  end


end
