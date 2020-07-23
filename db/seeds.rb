# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Topic.destroy_all
User.destroy_all
bob = User.create(username: "bob", email: "bob@gmail.com", password: "123", password_confirmation: '123')
t1 = Topic.create(title: "Sewing", user_id: bob.id)
t2 = Topic.create(title: "Fishing", user_id: bob.id)
t3 = Topic.create(title: "Knitting", user_id: bob.id)
t4 = Topic.create(title: "Magic", user_id: bob.id)
t5 = Topic.create(title: "Surfing", user_id: bob.id)
t6 = Topic.create(title: "Sleeping", user_id: bob.id)
t7 = Topic.create(title: "Gaming", user_id: bob.id)