feature 'Deleting a bookmark' do
    scenario 'A user can delete a bookmark from Bookmark Manager' do
      visit('bookmarks/new')
      fill_in('url', with: 'http://bbc.co.uk')
      fill_in('title', with: 'BBC')
      click_button('Submit')
      expect(page).to have_link('BBC', href: 'http://bbc.co.uk')

      first('.bookmark').click_button 'Delete'
      expect(page).not_to have_link('BBC', href: 'http://bbc.co.uk')
    end
  end
  