require 'bookmark'

describe Bookmark do

  describe '.all' do

    it 'returns all bookmarks' do
      Bookmark.add ('http://www.makersacademy.com')
      Bookmark.add ('http://www.destroyallsoftware.com')
      Bookmark.add ('http://www.google.com')
    
      bookmarks = Bookmark.all
    
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