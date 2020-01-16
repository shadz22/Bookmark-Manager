feature 'Add new bookmark via a form' do
  scenario 'user can add new bookmark' do
    visit '/bookmarks/new'
    fill_in 'url', with: 'http://www.facebook.com'
    click_button "Submit"
    expect(page).to have_content "http://www.facebook.com"
  end
end