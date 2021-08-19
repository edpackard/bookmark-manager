require 'pg'

feature "adding a bookmark" do
  
  scenario 'click on homepage button to access add page' do
    visit '/'
    click_button ('Add')
    expect(page).to have_current_path('/add')
    expect(page).to have_content "Add a bookmark"
  end

  scenario 'add a new bookmark via a form' do
    visit '/add'
    fill_in('url', with: 'www.facebook.com')
    click_button ('Submit')
    expect(page).to have_current_path('/')
  end

  scenario 'view an added bookmark' do
    visit '/add'
    fill_in('url', with: 'www.facebook.com')
    click_button ('Submit')
    click_button ('View bookmarks')
    expect(page).to have_current_path('/bookmarks')
    expect(page).to have_content('www.facebook.com')
  end

end 