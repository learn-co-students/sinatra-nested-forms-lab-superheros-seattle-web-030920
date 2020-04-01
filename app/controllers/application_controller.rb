require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/teams' do
        @team_name=params["team"]["name"]
        @team_motto=params["team"]["motto"]
        h1=Hero.new(params["team"]["members"][0])
        Hero.new(params["team"]["members"][1])
        Hero.new(params["team"]["members"][2])
        @heroes=Hero.all
        erb :team
    end

end
