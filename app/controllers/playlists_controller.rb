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





end