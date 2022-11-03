class ExerciseController < ApplicationController

    get "/exercises" do
        Exercise.all.to_json
    end

    post "/exercises" do
        exercise = Exercise.create({
            exercise_name: params[:exercise_name],
        })
        exercise.to_json
    end

    patch "/exercises/:id" do
        exercise = Exercise.find(params[:id])
        exercise.update(exercise_name: params[:exercise_name])
        exercise.to_json
    end

    delete "/exercises/:id" do
        exercise = Exercise.find(params[:id])
        exercise.destroy
        exercise.to_json
    end

end