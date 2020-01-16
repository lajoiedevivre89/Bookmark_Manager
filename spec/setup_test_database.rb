require 'pg'

def setup_test_database
  p "Setting up test database..."
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE bookmarks")

  connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.bbc.co.uk/news', 'BBC');")
  connection.exec("INSERT INTO bookmarks VALUES(2, 'https://www.youtube.com', 'Youtube');")
  connection.exec("INSERT INTO bookmarks VALUES(3, 'https://twitter.com/home', 'Twitter');")
    
end

