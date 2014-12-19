require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

	GAME = Game.new
  PLAYER = Player.new

	set :views, Proc.new { File.join(root, "../" "views") }
  set :public_folder, settings.root + '/../public/'
  enable :sessions

  
  get '/' do
   erb :index
  end

  get '/name_entry' do
  	erb :name_entry
  end

  post '/name_entry' do  
  	@name = params[:name]
    session[:name] = @name
    redirect '/game_screen'
  end

  get '/game_screen' do
    @name = session[:name]
    erb :game_screen
  end

  post '/game_screen/result' do
    @name = session[:name]
    @choice_one = params[:choice_one].to_sym
    @choice_two = GAME.computer_turn
    @result = GAME.play(@choice_one, @choice_two)
    erb :result    
  end

  run! if app_file == $0
end
