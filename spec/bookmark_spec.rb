require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'shows all the book bookmarks' do
      bookmark = Bookmark.all
      expect(bookmark).to include("http://www.google.com")
      expect(bookmark).to include("http://www.bbc.co.uk")
      expect(bookmark).to include("http://www.yahoo.com")
    end
  end
end