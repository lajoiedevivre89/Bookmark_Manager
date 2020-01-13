feature 'Viewing bookmarks' do
  scenario 'The user can see a list of URLs' do
    visit('/bookmarks')
    expect(page).to have_content "https://www.bbc.co.uk/news"
    expect(page).to have_content "https://www.youtube.com"
    expect(page).to have_content "https://twitter.com/home"
  end
end