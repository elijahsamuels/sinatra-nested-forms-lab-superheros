require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @hero_name = []
        @hero_power = []
        @hero_bio = []
        @team_members = params[:team][:members]
        @team_members.each do |i|
            # binding.pry
            @hero_name << i[:name]
            @hero_power << i[:power]
            @hero_bio << i[:bio]
            end
            erb :team
        end        

end
