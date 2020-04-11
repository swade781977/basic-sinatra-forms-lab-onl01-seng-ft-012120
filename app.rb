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
    @name = params["name"]
    @name.to_s 
    @coach = params["coach"]
    @coach.to_s 
    @pg = params["pg"]
    @pg.to_s 
    @sg = params["sg"]
    @sg.to_s
    @sf = params["sf"]
    @sf.to_s 
    @pf = params["pf"]
    @pf.to_s 
    @c = params["c"]
    @c.to_s 
    erb :team
  end
  
  
end
