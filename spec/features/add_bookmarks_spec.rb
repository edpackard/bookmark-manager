# visit /
# click button (add)
# expect page to be /add
# expect page to have content 'Add a bookmark

# ^^^ up to here
# fill in form (url)
# click button (submit)
# expect page to be home page
# click button (view)
# expect page to be /new
# expect page to have content (url)

require 'pg'

feature "adding a bookmark" do
  
  scenario 'click on homepage button to access add page' do
    visit '/'
    click_button ('Add a Bookmark')
    expect(page).to have_current_path('/add')
    expect(page).to have_content "Add a bookmark"
  end
  
end 