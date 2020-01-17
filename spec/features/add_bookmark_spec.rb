feature 'Add new bookmark via a form' do
  scenario 'user can add new bookmark' do
    visit '/bookmarks/new'
    fill_in 'url', with: 'http://www.facebook.com'
    fill_in 'title', with: 'Facebook'
    click_button "Submit"
    expect(page).to have_link('Facebook', href: 'http://www.facebook.com')
  end
end