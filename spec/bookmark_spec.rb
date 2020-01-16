require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'shows all the book bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.bbc.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.yahoo.com');")
      
      bookmark = Bookmark.all
      expect(bookmark).to include("http://www.google.com")
      expect(bookmark).to include("http://www.bbc.co.uk")
      expect(bookmark).to include("http://www.yahoo.com")
    end
  end

  describe '.create' do
    it 'Adds new bookmark' do
      Bookmark.create(url: 'http://testing.com')
      expect(Bookmark.all).to include 'http://testing.com'
    end
  end

end
