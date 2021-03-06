class Game

  attr_reader :current_turn, :players, :opponent

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @opponent = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    @current_turn, @opponent = @opponent, @current_turn
    # @current_turn == player_1 ? @current_turn = player_2 : @current_turn = player_1
  end

end
