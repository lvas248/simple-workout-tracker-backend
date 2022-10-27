puts "🌱 Seeding spices..."

# Seed your database here
["Luis", "Sasha", "Chimi"].each do |name|
    User.create(user_name: name)
end

['Push Ups', 'Pull Ups', 'Sit ups', 'Military Press', 'Bench Press', 'Incline Bench Press', 'Lat Pulldown'].each do |exer|
    Exercise.create(exercise_name: exer)
end

puts "✅ Done seeding!"
