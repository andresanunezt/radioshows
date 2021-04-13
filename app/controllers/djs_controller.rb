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
        
    erb :"djs/signup"
    end

end

end