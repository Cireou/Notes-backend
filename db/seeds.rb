# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Section.destroy_all
Topic.destroy_all
User.destroy_all
bob = User.create(username: "bob", email: "bob@gmail.com", password: "123", password_confirmation: '123')
t1 = Topic.create(title: "Sewing", user_id: bob.id)
    s1 = Section.create(title: "The Basics", topic_id: t1.id);
    s2 = Section.create(title: "The Basics V2", topic_id: t1.id);
    s3 = Section.create(title: "Threading", topic_id: t1.id);
    s4 = Section.create(title: "Quilting", topic_id: t1.id);
    s5 = Section.create(title: "A Good Eye", topic_id: t1.id);
    s6 = Section.create(title: "Patterns", topic_id: t1.id);
    s7 = Section.create(title: "Decisive Actions", topic_id: t1.id);
    s8 = Section.create(title: "Advanced Sewing", topic_id: t1.id);

t2 = Topic.create(title: "Fishing", user_id: bob.id)
t3 = Topic.create(title: "Knitting", user_id: bob.id)
t4 = Topic.create(title: "Magic", user_id: bob.id)
t5 = Topic.create(title: "Surfing", user_id: bob.id)
t6 = Topic.create(title: "Sleeping", user_id: bob.id)
t7 = Topic.create(title: "Gaming", user_id: bob.id)