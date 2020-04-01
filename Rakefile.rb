ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment.rb'
require 'sinatra/activerecord/rake'
require './app/controllers/application_controller'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

task :console do
    Pry.start
end