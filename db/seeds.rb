# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arabic = Language.create!(name: "Arabic")
russian = Language.create!(name: "Russian")

lessons = Lesson.create!([
  {name: "Basics", language: arabic},
  {name: "Basics", language: russian}
  ])

Exercise.create!([
  {lesson: Lesson.first, original: "Hello", translation: "مرحبا"},
  {lesson: Lesson.second, original: "Hello", translation: "Здравствуйте"}
  ])