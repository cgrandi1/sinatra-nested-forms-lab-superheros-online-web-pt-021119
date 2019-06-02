require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do

      binding.pry

      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero_1 = params[:team][:members][0][:name]
    end

end
