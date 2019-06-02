require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do

      binding.pry


      @team_name = params["team"]["name"]
      @team_motto = params[:team][:motto]
      @hero_1n = params[:team][:members][0][:name]
      @hero_1p = params[:team][:members][0][:power]
      @hero_1b = params[:team][:members][0][:power]

      @hero_2n = params[:team][:members][1][:name]
      @hero_2p = params[:team][:members][1][:power]
      @hero_2b = params[:team][:members][2][:bio]





    end

end
