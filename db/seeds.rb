# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = Admin.create(email: 'admin@exemple.com', password: 'admin123', password_confirmation: 'admin123')


news = News.create(title: "first news ", text: "This year marks ten years that Lunches for Learning (L4L) has been
dedicated to providing lunches to elementary school chidren of rural
Honduras. Our ten-year track record has kept countless kids in school,
thereby paving the way for these kids to enter the workforce as literate
individuals with hope for a brighter future. Over the past ten years, L4L has
expanded to feed more than 1,500 students, year after year, a nutritious
lunch every school day and is now positioned to grow exponentially in the
future")

news = News.create(title: "second news ", text: "This year marks ten years that Lunches for Learning (L4L) has been
dedicated to providing lunches to elementary school chidren of rural
Honduras. Our ten-year track record has kept countless kids in school,
thereby paving the way for these kids to enter the workforce as literate
individuals with hope for a brighter future. Over the past ten years, L4L has
expanded to feed more than 1,500 students, year after year, a nutritious
lunch every school day and is now positioned to grow exponentially in the
future")

news = News.create(title: "third ", text: "This year marks ten years that Lunches for Learning (L4L) has been
dedicated to providing lunches to elementary school chidren of rural
Honduras. Our ten-year track record has kept countless kids in school,
thereby paving the way for these kids to enter the workforce as literate
individuals with hope for a brighter future. Over the past ten years, L4L has
expanded to feed more than 1,500 students, year after year, a nutritious
lunch every school day and is now positioned to grow exponentially in the
future")

news = News.create(title: "fourth", text: "This year marks ten years that Lunches for Learning (L4L) has been
dedicated to providing lunches to elementary school chidren of rural
Honduras. Our ten-year track record has kept countless kids in school,
thereby paving the way for these kids to enter the workforce as literate
individuals with hope for a brighter future. Over the past ten years, L4L has
expanded to feed more than 1,500 students, year after year, a nutritious
lunch every school day and is now positioned to grow exponentially in the
future")