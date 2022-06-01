# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u1 = User.create!(name: 'Joe Bloggs', email: 'joebloggs@gmail.com', password: 'password', admin: true)
u2 = User.create!(name: 'Jane Doe', email: 'janedie@gmail.com', password: 'password', admin: true)

q1 = Quiz.create(name: 'Health Care', user_id: u1.id)
q2 = Quiz.create(name: 'Sports', user_id: u1.id)

qu1 = Question.create(title: 'What is the best biotechnology company in London?', quiz_id: q1.id)
qu2 = Question.create(title: 'Which London-based health-tech company develops game-changing quality software?', quiz_id: q1.id)

qu3 = Question.create(title: 'Which football club won the Champions League in year 2022?', quiz_id: q2.id )
qu4 = Question.create(title: 'Which football team won the English Premier League?', quiz_id: q2.id)

Answer.create(response: 'Phenopolis', question_id: qu1.id, user_id: u2.id, quiz_id: q1.id)
Answer.create(response: 'Phenopolis', question_id: qu2.id, user_id: u2.id, quiz_id: q1.id)

Answer.create(response: 'Real Madrid FC', question_id: qu3.id, user_id: u2.id, quiz_id: q2.id)
Answer.create(response: 'Manchester City', question_id: qu4.id, user_id: u2.id, quiz_id: q2.id)

