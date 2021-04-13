class PlaylistsController < ApplicationController

get '/playlists' do
    @playlists = Playlist.all

    erb :'playlists/index'
end

get '/playlists/new' do
    

    erb :'playlists/new'
end

post '/playlists' do
    
    
end






end