require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/attack_class.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/testing' do
    "Testing infrastructure working!"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  post '/switch-turns' do
    @game = $game
    @game.switch_turns
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @attack = Attack.new(@game.current_turn, @game.opponent)
    @attack.attack
    erb(:attack)
  end

  run! if app_file == $0
end
