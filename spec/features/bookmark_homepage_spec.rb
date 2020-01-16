feature 'Visit homepage' do
  scenario 'returns "Here is a list of your bookmarks:" ' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

      #add test data
      connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.bbc.co.uk/news');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'https://www.youtube.com');")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'https://twitter.com/home');")
    
    visit('/')
    expect(page).to have_content "Add a new bookmark:"
  end
end