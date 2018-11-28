class CreateJoinTableUserTask < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :tasks do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
    end
  end
end
