feature "Prints saved bookmarks" do 
  scenario "Outputs list of bookmarks" do 
    visit "/bookmarks"
    expect(page).to have_content ("http://www.google.com")
  end 
end 