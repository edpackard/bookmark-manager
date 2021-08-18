require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'

class Manager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Hello, World!"
  end

  get '/bookmarks' do 
    p ENV
    @bookmark = Bookmark.all
  
    erb :bookmark_bar
  end 
  
  run! if app_file == $0
end