require 'spec_helper'
require 'pg'

feature 'View bookmarks' do
  scenario 'should be able to see the list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.bbc.co.uk');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.yahoo.com');")

    visit '/bookmarks'

    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.yahoo.com'
    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end
