class AddPointsToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :points, :decimal
  end
end
