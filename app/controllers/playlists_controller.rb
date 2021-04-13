class PlaylistsController < ApplicationController

get '/playlists' do
    @playlists = Playlist.all

    erb :'playlists/index'
end

get '/playlists/new' do
    if logged_in?
    erb :'playlists/new'  
    else
        redirect 'playlists'
    end
end

post '/playlists' do
    playlist = current_dj.playlists.build(params)

    if playlist.save
        redirect '/playlists'
    else
        redirect 'playlists/new'
    end
end


get '/playlists/:id' do 
    @playlist = Playlist.find_by(id: params[:id] )

    erb :'playlists/show'
end


get '/playlists/:id/edit' do
    if logged_in?
        @playlist = Playlist.find_by(id: params[:id] )
            if @playlist.dj_id != current_dj.id || @playlist.dj_id == nil
                redirect '/playlists'
            else
                erb :'playlists/edit'
            end  
    else
        redirect '/login'
    end
end

patch '/playlists/:id' do
    playlist = Playlist.find_by(id: params[:id])
    params.delete("_method")
    playlist.update(params)
    if playlist.update(params)
        redirect "/playlists/#{playlist.id}"
    else
        redirect '/playlists/:id/edit'
    end
end



delete '/playlists/:id' do
    if logged_in?
       playlist = Playlist.find_by(id: params[:id])
       if playlist.dj_id != current_dj.id || playlist.dj_id == nil
        redirect "/playlists/#{playlist.id}"
       else
        playlist.destroy
        redirect '/playlists'
       end
    end


end


end