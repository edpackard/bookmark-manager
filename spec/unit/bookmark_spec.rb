require 'bookmark'

describe Bookmark do

  describe '.all' do

    it 'returns all bookmarks' do
      Bookmark.add('http://www.makersacademy.com', 'Makers')
      Bookmark.add('http://www.destroyallsoftware.com', 'Destroy')
      Bookmark.add('http://www.google.com', 'Google')
    
      bookmarks = Bookmark.all

      p bookmarks

      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.google.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
    end
  end

  describe '.add' do
    it 'create a new bookmark object' do 
      bookmark = Bookmark.add('www.facebook.com', 'Facebook')
      expect(bookmark).to be_a(Bookmark)
      expect(bookmark.url).to eq "www.facebook.com" 
      expect(bookmark.title).to eq 'Facebook'
    end
  end

end