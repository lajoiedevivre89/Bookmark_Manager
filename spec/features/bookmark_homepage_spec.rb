feature 'Visit homepage' do
  scenario 'returns "Here is a list of your bookmarks:" ' do
    visit('/')
    expect(page).to have_content "Here is a list of your bookmarks:"
  end
end