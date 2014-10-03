require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

	set :views, Proc.new { File.join(root, "../" "views") }
  
  get '/' do
   erb :index
  end

  get '/name_entry' do
  	erb :name_entry
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
