require 'pg'

def setup_test_database
  p "Setting up test database..."
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE bookmarks")

  bookmark = Bookmark.create(url: 'https://www.bbc.co.uk/news', title: 'BBC')
  Bookmark.create(url: 'https://www.youtube.com', title: 'Youtube')
  Bookmark.create(url: 'https://twitter.com/home', title: 'Twitter')


end

def persisted_data(id:)
  conn = PG.connect(dbname: 'bookmark_manager_test')
  result = conn.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end
