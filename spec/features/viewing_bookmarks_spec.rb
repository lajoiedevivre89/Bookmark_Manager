feature 'Viewing bookmarks' do
  scenario 'The user can see a list of bookmark URLs' do

    visit('/bookmarks')
    expect(page).to have_con "BBC"
    expect(page).to have_content "Youtube"
    expect(page).to have_content "Twitter"
  end
end