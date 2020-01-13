require 'spec_helper'

feature 'View bookmarks' do
  scenario 'should be able to see a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.yahoo.com'
    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end
