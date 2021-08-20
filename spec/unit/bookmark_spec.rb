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
    it 'should add a string to the database' do 
      Bookmark.add('www.facebook.com', 'Facebook')
      expect(Bookmark.url).to eq "www.facebook.com" 
      expect(Boommark.title).to eq 'Facebook'
    end
  end

end