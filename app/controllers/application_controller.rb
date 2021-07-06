require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do 
        erb :"new"
    end 

    post '/teams' do 
        @team_data = params[:team]
        @team_members = @team_data[:members]
        # @team = Team.new(params[:team][:name],params[:team][:motto])
        # @team_member.each{|member| Superhero.new(member[:name],member[:power],member[:biography],params[:team][:name])}
        erb :index
    end



end
