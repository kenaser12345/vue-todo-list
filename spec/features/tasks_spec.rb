require 'rails_helper'

RSpec.feature "Tasks", type: :feature, js: true do
  user = FactoryBot.create(:user)
  
  
  before do
    visit login_path
    fill_in "user_password", with: "123456"
    fill_in "user_email", with: "banacat@test.com"
    click_button "login"
  end
  scenario "Task can be created"do
    click_link "new"
    fill_in "task_name", with: "test"
    fill_in "task_description", with: "test123"
    click_button "create"

    
      expect(page).to have_content "test"
    
  end
  scenario "Task can be edited" do
    
    click_link "new"
    fill_in "task_name", with: "test"
    fill_in "task_description", with: "test123"
    click_button "create"
    find('a', text: 'test').click  
    click_link "task_edit"
    fill_in "task_name", with: "edittest"
    fill_in "task_description", with: "edittest123"
    click_button "create"
    
    expect(page).to have_content "edittest"  
  end
  scenario "Task can be deleted" do
    click_link "new"
    fill_in "task_name", with: "test"
    fill_in "task_description", with: "test123"
    click_button "create"
    find('a', text: 'test').click  
    click_link "task_delete"

    expect(page).to have_no_content "test"
  end

end
