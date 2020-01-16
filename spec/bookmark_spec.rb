require 'bookmark'

describe Bookmark do
  describe '.all' do    # the . in front of the method name indicates that it is a class method    # is used for instance methods 
    it 'returns all bookmarks' do
      
      bookmarks = Bookmark.all # call the class method all on the Bookmark class 
      expect(bookmarks.first.title).to eq 'BBC'
      expect(bookmarks.last.title).to eq "Twitter"
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(title: 'Test Bookmark', url: 'http://www.testbookmark.com')
      persisted_data = persisted_data(id: bookmark.id)
  
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.testbookmark.com'
    end
  end
end