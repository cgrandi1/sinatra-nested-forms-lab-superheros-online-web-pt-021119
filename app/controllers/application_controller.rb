require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
      binding.pry
    end

    post '/teams' do
      binding.pry

      @team_name = params[:team][:name]
    end

end
