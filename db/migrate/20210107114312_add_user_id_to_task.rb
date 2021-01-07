class AddUserIdToTask < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :user, index: true, null: false
  end
end
