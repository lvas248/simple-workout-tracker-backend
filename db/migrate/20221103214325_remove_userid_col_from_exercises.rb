class RemoveUseridColFromExercises < ActiveRecord::Migration[6.1]
  def change
    remove_column :exercises, :user_id
  end
end
