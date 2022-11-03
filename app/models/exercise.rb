
class Exercise < ActiveRecord::Base
    has_many :workouts
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
    
end