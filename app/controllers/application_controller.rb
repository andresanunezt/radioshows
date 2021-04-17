require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV['SECRET_KEY']
    register Sinatra::Flash
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def logged_in?
      session[:user_id]
    end

    def current_dj
      @logged_in_dj ||= Dj.find_by(id: session[:user_id])
    end
  end

end
