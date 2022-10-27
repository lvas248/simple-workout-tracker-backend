class WorkoutController < ApplicationController

    get "/workouts" do 
        Workout.all.to_json
    end

    post "/workouts" do
        new_workout = Workout.create(
            user_id: params[:user_id],
            exercise_id: params[:exercise_id],
            set_num: params[:set_num],
            weight: params[:weight],
            reps: params[:reps]
        )
        new_workout.to_json

    end


end