require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base

	# GAME = Game.new

	set :views, Proc.new { File.join(root, "../" "views") }
  set :public_folder, settings.root + '/../public/'

  
  get '/' do
   erb :index
  end

  get '/name_entry' do
  	erb :name_entry
  end

  post '/game_screen' do  
  	@name = params[:name]
    # player = Player.new
    # player.name = player_name
    #GAME.add_player player
    erb :game_screen
  end

  get '/rock' do
    erb :rock
  end

  get '/paper' do
    erb :paper
  end

  get '/scissors' do
    erb :scissors
  end  

  get '/comp_turn' do
    erb :comp_turn
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
