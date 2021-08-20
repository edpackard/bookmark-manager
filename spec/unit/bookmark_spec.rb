require 'bookmark'

describe Bookmark do

  describe '.all' do

    it 'returns all bookmarks' do
      bookmark = Bookmark.add('http://www.makersacademy.com', 'Makers')
      Bookmark.add('http://www.destroyallsoftware.com', 'Destroy')
      Bookmark.add('http://www.google.com', 'Google')
    
      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first.url).to eq('http://www.makersacademy.com')
      expect(bookmarks.first.id).to eq(bookmark.id)
      expect(bookmarks[2].url).to eq('http://www.google.com')
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