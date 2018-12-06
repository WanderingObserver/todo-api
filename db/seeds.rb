# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: "demo", password: "password", password_confirmation: "password", firstname: "Liam", lastname: "Smith")

todo = user.todos.build(title: "Get Fit", description: "Start going to the gym every Monday, Wednesday and Friday of the week.")
todo.save

todo.sub_todos.build(description: "Open gym membership").save
todo.sub_todos.build(description: "Buy gym shorts").save

todo = user.todos.build(title: "Read More", description: "Start reading 30 minutes a day before going to sleep")

todo.sub_todos.build(description: "").save
todo.sub_todos.build(description: "").save
