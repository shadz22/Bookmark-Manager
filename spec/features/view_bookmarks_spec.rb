require 'spec_helper'
require 'pg'

feature 'View bookmarks' do
  scenario 'should be able to see the list of bookmarks' do

    Bookmark.create(url: "http://www.google.com")
    Bookmark.create(url: "http://www.bbc.co.uk")
    Bookmark.create(url: "http://www.yahoo.com")

    visit '/bookmarks'

    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.yahoo.com'
    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end
