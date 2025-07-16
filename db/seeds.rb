# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Book.destroy_all
Author.destroy_all
Category.destroy_all

author1 = Author.create!(name: "George Orwell")
author2 = Author.create!(name: "J.K. Rowling")

fiction = Category.create!(name: "Fiction")
dystopian = Category.create!(name: "Dystopian")
fantasy = Category.create!(name: "Fantasy")

book1 = Book.create!(title: "1984", author: author1)
book2 = Book.create!(title: "Animal Farm", author: author2)
book3 = Book.create!(title: "Harry Potter", author: author2)

book1.categories << fiction
book1.categories << dystopian

book2.categories << fiction

book3.categories << fiction
book3.categories << fantasy
