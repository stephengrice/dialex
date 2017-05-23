# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Exercise.destroy_all
Lesson.destroy_all
Language.destroy_all

arabic = Language.create!(name: "arabic")
russian = Language.create!(name: "russian")

lessons = Lesson.create!([
  {name: "Basics", language: arabic},
  {name: "Basics", language: russian}
  ])

Exercise.create!([
  {lesson: Lesson.first, original: "Hello", translation: "مرحبا"},
  {lesson: Lesson.first, original: "How are you?", translation: "كيف حالك؟"},
  {lesson: Lesson.first, original: "What is your name?", translation: "ما اسمك؟"},
  {lesson: Lesson.second, original: "Hello", translation: "Здравствуйте"},
  {lesson: Lesson.second, original: "How are you?", translation: "Как дела?"}
  ])