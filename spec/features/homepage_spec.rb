feature "Prints home page" do 
  scenario "prints string" do 
    visit "/"
    expect(page).to have_content "Hello, World!"
  end 
end 

feature "Display list of bookmarks" do 
  scenario "makes get request to /bookmarks route" do 
    visit "/bookmarks"
    expect(page).to have_content("http://www.makersacademy.com/")
  end 
end 