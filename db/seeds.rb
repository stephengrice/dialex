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

# Languages
arabic = Language.create(name: "arabic")
russian = Language.create(name: "russian")

# Lessons
ar_basics = Lesson.create({name: "Basics", language: arabic})
ru_basics = Lesson.create({name: "Basics", language: russian})
ru_alphabet = Lesson.create({name: "Alphabet", language: russian})

# Exercises
Exercise.create([
  {lesson: ar_basics, original: "Hello", translation: "مرحبا"},
  {lesson: ar_basics, original: "How are you?", translation: "كيف حالك؟"},
  {lesson: ar_basics, original: "What is your name?", translation: "ما اسمك؟"},
  {lesson: ar_basics, original: "Goodbye", translation: "وداعا"},
  
  {lesson: ru_basics, original: "Hello", translation: "Здравствуйте"},
  {lesson: ru_basics, original: "Hi", translation: "Привет"},
  {lesson: ru_basics, original: "How are you?", translation: "Как дела?"},
  {lesson: ru_basics, original: "What is your name?", translation: "Как вас зовут?"},
  {lesson: ru_basics, original: "Nice to meet you", translation: "Очень приятно"},
  {lesson: ru_basics, original: "Have a nice day", translation: "Хорошего дня"},
  {lesson: ru_basics, original: "Bye", translation: "Пока"},
  {lesson: ru_basics, original: "Goodbye", translation: "До свидания"},
  
  {lesson: ru_alphabet, original: "d", translation: "д"},
  {lesson: ru_alphabet, original: "m", translation: "м"}
  ])