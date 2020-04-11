require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "Start Page"
  end
  
  get '/newteam' do
    erb :newteam
  end
  
  get '/team' do
    erb :team
  end
  
  post '/team' do
    @team_name = params["team_name"]
    @team_name.to_s 
    @coach = params["coach"]
    @coach.to_s 
    @point_guard = params["point_guard"]
    @point_guard.to_s 
    @shooting_guard = params["shooting_guard"]
    @shooting_guard.to_s
    @small_forward = params["small_forward"]
    @small_forward.to_s 
    @power_forward = params["power_forward"]
    @power_forward.to_s 
    @center = params["center"]
    @center.to_s 
    erb :team
  end
  
  
end
