require 'sinatra/base'
# require './lib/player'

class RockPaperScissors < Sinatra::Base

	# GAME = Game.new

	set :views, Proc.new { File.join(root, "../" "views") }
  
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

  # start the server if ruby file executed directly
  run! if app_file == $0
end
