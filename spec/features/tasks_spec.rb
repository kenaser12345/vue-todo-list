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

    expect {
      expect(page).to have_content "test"
    }
  end
  # scenario "Task can be edited" do
  #   before do
  #     task = FactoryBot.create(:task)
  #   end
  #   visit root_path
  #   click_link "Tasktest"
  #   click_link "修改"
  #   fill_in "任務名稱", with: "edittest"
  #   fill_in "任務描述", with: "edittest123"
  #   click_button "送出"
  #   expect {
  #     expect(page).to have_content "edittest"
  #     expect(page).to have_content "edittest123"
  #   }
  # end
  # scenario "Task can be deleted" do
  #   before do
  #     task = FactoryBot.create(:task)
  #   end
  #   visit root_path
  #   click_link "Tasktest"
  #   click_link "刪除任務"
  #   expect {
  #     expect(page).to have_content "Tasktest"
  #   }
  # end

end
