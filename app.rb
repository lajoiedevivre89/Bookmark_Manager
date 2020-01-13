require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  
  get '/' do
    "Here is a list of your bookmarks:"
  end







  run! if app_file == $0

end 