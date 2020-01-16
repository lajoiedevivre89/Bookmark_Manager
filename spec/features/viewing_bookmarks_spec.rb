feature 'Viewing bookmarks' do
  scenario 'The user can see a list of bookmark URLs' do

    bookmarks = Bookmark.all

    visit('/bookmarks')
    expect(page).to have_link("BBC", href: 'https://www.bbc.co.uk/news')
    expect(page).to have_link("Youtube", href: 'https://www.youtube.com')
    expect(page).to have_link("Twitter", href: 'https://twitter.com/home')

  end
end