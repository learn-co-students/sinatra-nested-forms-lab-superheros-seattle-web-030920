require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        #@team = params[:team]
        @team = params["team"]["name"]
        @motto = params["team"]["motto"]

        # @hero_name = []

        # @hero_power = []
        # @hero_bio = []

        @team_members = params["team"]["members"]
        
        erb :team
    end
end
