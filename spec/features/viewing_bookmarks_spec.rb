feature 'Viewing bookmarks' do
  scenario 'The user can see a list of bookmark URLs' do
    
    connection = PG.connect(dbname: 'bookmark_manager_test')

      #add test data
      connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.bbc.co.uk/news');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'https://www.youtube.com');")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'https://twitter.com/home');")
    
    visit('/bookmarks')
    expect(page).to have_content "https://www.bbc.co.uk/news"
    expect(page).to have_content "https://www.youtube.com"
    expect(page).to have_content "https://twitter.com/home"
  end
end