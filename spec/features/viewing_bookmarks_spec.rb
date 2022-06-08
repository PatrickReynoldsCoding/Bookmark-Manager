
feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit '/'
      expect(page).to have_button 'Continue'
    end
  end

  feature 'visiting the bookmarks page' do
    scenario 'when the user wants to see their bookmarks' do
      visit '/bookmarks'
      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.google.com"
    end
  end

end