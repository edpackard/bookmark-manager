require 'pg'

feature "Prints saved bookmarks" do 
  scenario "Outputs list of bookmarks" do 
    Bookmark.add('http://www.makersacademy.com', 'Makers')
    Bookmark.add('http://www.facebook.com', 'Facebook')
    visit "/bookmarks"
    expect(page).to have_link('Facebook', href: 'http://www.facebook.com')
    expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')
    
  end
end 