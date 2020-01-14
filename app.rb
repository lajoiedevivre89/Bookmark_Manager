require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  
  get '/' do
    "Here is a list of your bookmarks:"
  end

  get '/bookmarks' do
    #bookmarks = [ 
      #"https://www.bbc.co.uk/news",
      #"https://www.youtube.com",
      #"https://twitter.com/home"
    #]
    #bookmarks.join
    @bookmarks = Bookmark.all
    erb(:'bookmarks/index')
  end







  run! if app_file == $0

end 