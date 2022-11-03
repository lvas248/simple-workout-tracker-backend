class RemoveUseridColFromWorkouts < ActiveRecord::Migration[6.1]
  def change
    remove_column :workouts, :user_id
  end
end
