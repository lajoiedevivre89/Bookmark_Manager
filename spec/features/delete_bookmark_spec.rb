feature 'Delete bookmark' do
  scenario 'it can delete bookmarks' do
    visit('/')
    fill_in('title', with: 'Instagram')
    fill_in('url', with: 'https://www.instagram.com')
    click_on('Submit')
    expect(page).to have_link('Instagram', href:'https://www.instagram.com')

    first('.bookmark').click_on 'Delete'
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Instagram', href:'https://www.instagram.com')
  end
end