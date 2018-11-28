class AddBoolToTasksUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks_users, :is_done, :boolean
  end
end
