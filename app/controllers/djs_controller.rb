class DjsController < ApplicationController

get '/djs' do
    @djs = Dj.all
    
    erb :'djs/index'
end




get '/signup' do

    erb :'djs/signup'
end

post '/djs' do
    @dj = Dj.new(params)

    if @dj && @dj.save
        session[:user_id] = @dj.id
        redirect '/djs'
        
    else
       flash[:alert] = "INVALID INFORMATION.TRY AGAIN PLEASE." 
    erb :"djs/signup"
    end

end


get '/djs/:id' do
    @dj = Dj.find_by(id: params[:id] )
    @playlists = Dj.find_by(id: params[:id]).playlists
    erb :'djs/show'
    

end


get '/djs/:id/profile' do
    if logged_in? 
        @dj = Dj.find_by(id: params[:id])
            if @dj.id != current_dj.id || @dj.id == nil
                flash[:alert] = "YOU DO NOT HAVE ACCESS TO THIS PAGE!"
                redirect '/djs'
            else
                erb :'djs/dj_profile'
            end  
    else
        flash[:alert] = "YOU HAVE TO BE LOGGED IN TO VIEW THIS PAGE!"
        redirect '/login'
        
    end
end

patch '/djs/:id' do
    dj = Dj.find_by(id: params[:id])
    params.delete("_method")
    dj.update(name: params[:name], dj_name: params[:dj_name],username: params[:username] )
    if dj.update(params)
        redirect "/dj/#{dj.id}"
    else
        redirect '/dj/:id/edit'
    end
end







end