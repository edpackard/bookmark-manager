require 'pg'

feature "Prints saved bookmarks" do 
  scenario "Outputs list of bookmarks" do 
    urls = ['http://www.makersacademy.com', 'http://www.destroyallsoftware.com', 'http://www.google.com']
    urls.each { |url| Bookmark.add(url) }
    visit "/bookmarks"
    urls.each { |url| expect(page).to have_content url }
  end
end 