# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do |i|
#   users = User.create(username: "test User#{i}",
#                       email: "testuser#{i}@example.com",
#                       password: "hogehoge",
#                       password_confirmation: "hogehoge")
# end

  video_test1 = Video.create(youtube_id: "m2bzXSKous4",
                        artist_name: "アルカラ",
                        music_name: "サースティサースティサースティガール")

  video_test2 = Video.create(youtube_id: "WJW7kS9AAI4",
                        artist_name: "ポルカドットスティングレイ",
                        music_name: "ICHIDAIJI")

  category_test1 = Category.create(name: "Rock")
  category_test2 = Category.create(name: "Gt Rock")
  category_test3 = Category.create(name: "Emo")
  category_test4 = Category.create(name: "Post Rock")
  # category_test1 = video_test1.categories.create(name: "Rock")
  # category_test2 = video_test1.categories.create(name: "Gt_Rock")
