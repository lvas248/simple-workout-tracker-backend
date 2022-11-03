
class User < ActiveRecord::Base
    has_many :workouts
    has_many :exercises
    has_many :created_exercises, class_name: 'Exercise'
end