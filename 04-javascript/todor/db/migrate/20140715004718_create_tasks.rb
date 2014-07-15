class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.date :due_date
      t.boolean :completed, :default => false
      t.integer :user_id
      t.integer :priority_id
    end
  end
end
