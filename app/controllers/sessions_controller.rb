class SessionsController < ApplicationController



get '/login' do
    if logged_in?
        redirect '/playlists'
    else
    erb :'sessions/login'
    end
end


post '/login' do

    dj = Dj.find_by(username: params[:username])
    if dj && dj.authenticate(params[:password])
        session[:user_id] = dj.id
        redirect '/playlists'
    else
        flash[:notice] = "INCORRECT INFORMATION. PLEASE TRY AGAIN"
        redirect '/login'
    end

end


get '/logout' do
    session.clear
    redirect "/login"
    
end

end