require 'bookmark'

describe Bookmark do
  describe '.all' do    # the . in front of the method name indicates that it is a class method    # is used for instance methods 
    it 'returns all bookmarks' do
      
      bookmarks = Bookmark.all # call the class method all on the Bookmark class 
      expect(bookmarks).to include("BBC") # bookmarks is the array - in our controller 
      expect(bookmarks).to include("Youtube")
      expect(bookmarks).to include("Twitter")
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(title: 'Test Bookmark', url: 'http://www.testbookmark.com').first
  
      expect(bookmark['url']).to eq 'http://www.testbookmark.com'
      expect(bookmark['title']).to eq 'Test Bookmark'
    end
  end
end