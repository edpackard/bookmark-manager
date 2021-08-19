feature "Prints home page" do 
  scenario "prints string" do 
    visit "/"
    expect(page).to have_content "Welcome to the Bookmark Manager"
  end 
end 

feature "Display list of bookmarks" do 
  scenario "makes get request to /bookmarks route" do 
    visit '/'
    Bookmark.add('http://www.makersacademy.com')
    click_button 'View'
    expect(page).to have_content("http://www.makersacademy.com")
  end 
end 