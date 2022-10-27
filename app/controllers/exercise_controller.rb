class ExerciseController < ApplicationController

    get "/exercises" do
        Exercise.all.to_json
    end

    post "/exercises" do
        exercise = Exercise.create(exercise_name: params[:exercise_name])
        exercise.to_json
    end
end