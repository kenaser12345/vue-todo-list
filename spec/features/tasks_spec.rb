require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  scenario "user can login and enter homepage" do
    user = FactoryGirl.create(:user)
    
    visit root_path
    fill_in '信箱', with: user.email
    fill_in '密碼', with: user.password
    click_button "login"
  end
end
