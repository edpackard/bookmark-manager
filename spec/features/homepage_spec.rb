feature "Prints home page" do 
  scenario "prints string" do 
    visit "/"
    expect(page).to have_content "Welcome to the Bookmark Manager"
  end 
end 

feature "Display list of bookmarks" do 
  scenario "makes get request to /bookmarks route" do 
  connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")

    visit "/bookmarks"
    expect(page).to have_content("http://www.makersacademy.com")
  end 
end 