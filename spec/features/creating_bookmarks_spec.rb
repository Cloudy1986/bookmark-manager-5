feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('bookmarks/new')
    fill_in('url', with: 'http://bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button('Submit')
    expect(page).to have_link('BBC')
    click_link('BBC')
    expect(page).to have_content('Welcome to the BBC')
  end
end
