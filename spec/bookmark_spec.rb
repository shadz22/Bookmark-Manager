require 'bookmark'
require 'setup_test_database'

describe Bookmark do
  describe '.all' do
    it 'shows all the book bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: 'http://www.google.com', title: 'Google')
      Bookmark.create(url: 'http://www.bbc.co.uk', title: 'BBC UK')
      Bookmark.create(url: 'http://www.yahoo.com', title: 'Yahoo')
      
      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks).to include Bookmark 
      expect(bookmarks.first.id).to eq bookmark.id 
      expect(bookmark.title).to eq "Google"
      expect(bookmark.url).to eq 'http://www.google.com'
    end
  end

  describe '.create' do
    it 'Adds new bookmark and title' do
      bookmark = Bookmark.create(url: 'http://www.testing.com', title: 'Testing')
      persisted_data = persisted_data(id: bookmark.id)
      expect(bookmark.url).to eq persisted_data['url']
      #expect(Bookmark.all).to include 'http://testing.com'
      expect(bookmark.url).to eq 'http://www.testing.com'
      expect(bookmark.title).to eq 'Testing'
    end
  end

end
