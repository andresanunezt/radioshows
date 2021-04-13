require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end


  def logged_in?
    session[:user_id]
  end

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end

end
