require 'bookmark'

describe Bookmark do

  describe '.all' do

    it 'returns all bookmarks' do
      bookmark_manager = Bookmark.all
    
      expect(bookmark_manager).to include "http://www.makersacademy.com/"
      expect(bookmark_manager).to include "http://www.google.com/"
      expect(bookmark_manager).to include "http://www.destroyallsoftware.com/"
    end
    
  end

end