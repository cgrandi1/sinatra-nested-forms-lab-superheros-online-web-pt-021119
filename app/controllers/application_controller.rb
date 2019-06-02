require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do

      @params
      binding.pry

      @team_name = params[:team][:name]
    end

end
