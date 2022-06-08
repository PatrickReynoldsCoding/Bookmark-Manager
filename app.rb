require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end



get '/bookmarks' do
  @bookmarks = Bookmark.all
  erb :'bookmarks/index'
end

  run! if app_file == $0
end