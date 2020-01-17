require 'spec_helper'
require 'pg'

feature 'View bookmarks' do
  scenario 'should be able to see the list of bookmarks' do

    Bookmark.create(url: "http://www.google.com", title: "Google")
    Bookmark.create(url: "http://www.bbc.co.uk", title: "BBC UK")
    Bookmark.create(url: "http://www.yahoo.com", title: "Yahoo")

    visit '/bookmarks'

    expect(page).to have_link("Google", href: 'http://www.google.com')
    expect(page).to have_link("BBC UK", href: 'http://www.bbc.co.uk')
    expect(page).to have_link("Yahoo", href: 'http://www.yahoo.com')
    
  end
end
