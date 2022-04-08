# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
User.create({
              id: 1,
              name: "furkan",
              email: "furkan",
              description: "Kitap okumayı ve müzik dinlemeyi severim, yazılımla uğraşıyorum. Üniversitede öğrenciyim, üsküdar sahile çok yakın bir yerde oturuyorum. En sevdiğim anime Cowboy Bebop.",
              password_digest: BCrypt::Password.create("furkan")
            })
Manga.create({
               title: "Manga 1",
               genre: "Genre 1",
               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
               volumes: "1-13, 15, 17",
               user_id: 1,
               image_url: "alchemist.jpg"
             })
Manga.create({
               title: "Manga 2",
               genre: "Genre 2",
               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
               volumes: "1-13, 15, 17",
               user_id: 1,
               image_url: "alchemist.jpg"
             })
Manga.create({
               title: "Manga 3",
               genre: "Genre 3",
               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
               volumes: "1-13, 15, 17",
               user_id: 1,
               image_url: "alchemist.jpg"
             })
Manga.create({
               title: "Manga 4",
               genre: "Genre 4",
               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
               volumes: "1-13, 15, 17",
               user_id: 1,
               image_url: "alchemist.jpg"
             })