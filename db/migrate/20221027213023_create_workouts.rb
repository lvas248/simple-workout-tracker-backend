class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.integer :set_num
      t.integer :weight
      t.integer :reps
      t.timestamps
    end
  end
end
