feature 'add bookmark' do
  scenario 'user adds bookmark to Bookmark Manager' do
  
    visit('/')
    fill_in('title', with: 'Instagram')
    fill_in('url', with: 'https://www.instagram.com')
    click_on('Submit')

    expect(page).to have_link('Instagram', href:'https://www.instagram.com')
  end
end
