require 'pg'


class Bookmark


  def self.all 
   # [
     # "https://www.bbc.co.uk/news",
     # "https://www.youtube.com",
     # "https://twitter.com/home"
     #]
     connection = PG.connect(dbname: 'bookmark_manager') # connecting to the database
     result = connection.exec("SELECT * FROM bookmarks;") # allows us to query the database connection i.e. we can now access the bookmarks table ('bookmarks')
     result.map { |bookmark| bookmark['url'] } # hash? as each bookmark will have an id and a url 
  end
end