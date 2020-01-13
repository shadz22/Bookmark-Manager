require 'bookmark'

describe Bookmark do
  it 'shows all the book bookmarks' do
    bookmark = Bookmark.all
    expect(bookmark).to include("http://www.google.com")
    expect(bookmark).to include("http://www.yahoo.com")
    expect(bookmark).to include("http://www.bbc.co.uk")
  end
end