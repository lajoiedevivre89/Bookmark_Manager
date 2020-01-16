feature 'add bookmark' do
  scenario 'user adds bookmark to Bookmark Manager' do
    #connection = PG.connect(dbname: 'bookmark_manager_test')

    visit('/')
    # fill_in('id_number', with: 4)
    fill_in('url', with: 'www.youtube.com')
    click_on('Submit')

    expect(page).to have_content('www.youtube.com')
  end
end
