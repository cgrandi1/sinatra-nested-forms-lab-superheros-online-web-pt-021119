require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do

      #binding.pry


      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero_1n = params[:team][:member][0][:name]
      @hero_1p = params[:team][:member][0][:power]
      @hero_1b = params[:team][:member][0][:bio]

      @hero_2n = params[:team][:member][1][:name]
      @hero_2p = params[:team][:member][1][:power]
      @hero_2b = params[:team][:member][1][:bio]

      @hero_3n = params[:team][:member][2][:name]
      @hero_3p = params[:team][:member][2][:power]
      @hero_3b = params[:team][:member][2][:bio]



      erb :super_hero

    end

end
