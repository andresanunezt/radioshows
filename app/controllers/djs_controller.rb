class DjsController < ApplicationController

get '/djs' do
    @djs = Dj.all

    erb :'djs/index'
end




get '/signup' do

    erb :'djs/signup'
end

end