class SessionsController < ApplicationController



get '/login' do

    erb :'sessions/login'
end


post '/login' do

    dj = Dj.find_by(username: params[:username])
    if dj && dj.authenticate(params[:password])
        session[:user_id] = dj.id
        redirect '/djs'
    else
        redirect '/login'
    end

end



get '/logout' do
    session.clear
    redirect "/login"
    
end

end