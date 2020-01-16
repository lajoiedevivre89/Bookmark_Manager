feature 'Visit homepage' do
  scenario 'returns "Here is a list of your bookmarks:" ' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

      #add test data
      
    visit('/')
    expect(page).to have_content "Add a new bookmark:"
  end
end