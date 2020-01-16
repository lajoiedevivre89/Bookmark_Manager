require 'pg'


class Bookmark


  def self.all 
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
  
    result = connection.exec("SELECT * FROM bookmarks;") # allows us to query the database connection i.e. we can now access the bookmarks table ('bookmarks')
    result.map { |bookmark| bookmark['title'] } # hash? as each bookmark will have an id and a url 
  end

  def self.create(title:, url:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}') RETURNING id, url, title")
  end

end
