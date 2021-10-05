feature 'Testing infrastructure' do
  scenario 'Can load form for user to fill their name' do
    visit('/')
    page.find('form')
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name1, with: 'Bob'
    fill_in :name2, with: 'Alice'
    click_button 'Submit'
    
    save_and_open_page # will save the web page and open the browser to display it
    
    expect(page).to have_content 'Bob vs Alice'
  end
end
