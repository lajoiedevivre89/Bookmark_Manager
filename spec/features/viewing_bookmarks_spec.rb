feature 'Viewing bookmarks' do
  scenario 'The user can see a list of bookmark URLs' do
  
    Bookmark.create(url: "https://www.bbc.co.uk/news")
    Bookmark.create(url: "https://www.youtube.com")
    Bookmark.create(url: "https://twitter.com/home")

    visit('/bookmarks')
    expect(page).to have_content "https://www.bbc.co.uk/news"
    expect(page).to have_content "https://www.youtube.com"
    expect(page).to have_content "https://twitter.com/home"
  end
end