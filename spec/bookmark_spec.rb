require 'bookmark'

describe Bookmark do
  describe '.all' do    # the . in front of the method name indicates that it is a class method    # is used for instance methods 
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      #add test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.bbc.co.uk/news');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.youtube.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
      
      bookmarks = Bookmark.all # call the class method all on the Bookmark class 
      expect(bookmarks).to include("https://www.bbc.co.uk/news") # bookmarks is the array - in our controller 
      expect(bookmarks).to include("https://www.youtube.com")
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end
end