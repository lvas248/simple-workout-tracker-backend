class WorkoutController < ApplicationController

    get "/workouts" do 
        Workout.all.to_json(include: :exercise)
       
    end

    post "/workouts" do
        new_workout = Workout.create(
            user_id: params[:user_id],
            exercise_id: params[:exercise_id],
            set_num: params[:set_num],
            weight: params[:weight],
            reps: params[:reps]
        )
        new_workout.to_json( include: {
            exercise: {
                only: :exercise_name
            }
        })
    end

    patch "/workouts/:id" do
        workout = Workout.find(params[:id])
        workout.update(
            user_id: params[:user_id],
            exercise_id: params[:exercise_id],
            set_num: params[:set_num],
            weight: params[:weight],
            reps: params[:reps]
        )
        workout.to_json(include: {
            exercise: {
                only: :exercise_name
            }})
    end

    delete "/workouts/:id" do
        workout = Workout.find(params[:id])
        workout.destroy
        workout.to_json
    end




end