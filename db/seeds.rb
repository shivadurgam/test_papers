# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(email: 'email@gmail.com', password: '11111111', password_confirmation: '11111111')

10.times do | i |
  Question.create(q1: Faker::Lorem.sentence, ans1: Faker::Lorem.word, ans2: Faker::Lorem.word, ans3: Faker::Lorem.word, ans4: Faker::Lorem.word, correct_ans: [1, 4])
end
