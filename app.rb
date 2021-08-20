require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'

class Manager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    
    erb(:index)
    
  end

  get '/add' do
    erb(:add)
  end

  post '/add' do
    Bookmark.add(params[:url], params[:title])
    redirect '/'
  end

  get '/bookmarks' do 
    
    @bookmark = Bookmark.all
    
    erb :bookmark_bar
  end 
  
  run! if app_file == $0
end