require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  before do
    user = FactoryBot.create(:user)
    user_login(user)
    
  end
  scenario "Task can be created" do
    visit root_path
    click_link "新增任務"
    fill_in "名稱", with: "test"
    fill_in "內容", with: "test123"
    click_button "新增"

    expect {
      expect(page).to have_content "test"
    }.to change(user.tasks, :count).by(1)
  end
  scenario "Task can be edited" do
    before do
      task = FactoryBot.create(:task)
    end
    visit root_path
    click_link "Tasktest"
    click_link "修改任務"
    fill_in "名稱", with: "edittest"
    fill_in "內容", with: "edittest123"
    click_button "修改"
    expect {
      expect(page).to have_content "edittest"
      expect(page).to have_content "edittest123"
    }
  end
  scenario "Task can be deleted" do
    before do
      task = FactoryBot.create(:task)
    end
    visit root_path
    click_link "Tasktest"
    click_link "刪除任務"
    expect {
      expect(page).to have_content "Tasktest"
    }
  end

end
