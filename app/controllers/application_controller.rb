require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = Team.create(name: params[:team][:name], motto: params[:team][:motto])
        @superheroes = params[:team][:member].map do |member|
            superhero = Superhero.create(member)
            superhero.team = @team
            superhero
            
        end
        erb :team
    end
end
