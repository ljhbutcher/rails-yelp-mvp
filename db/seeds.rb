# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create(name: "Epicure", address: "75008 Paris", phone_number: "1234567890", category: "french")
Restaurant.create(name: "Sushi Samba", address: "110 Bishopsgate, London", phone_number: "0987654321", category: "japanese")
Restaurant.create(name: "Pasta Palace", address: "123 Pasta Lane, Rome", phone_number: "1122334455", category: "italian")
Restaurant.create(name: "Waffle House", address: "456 Waffle St, Brussels", phone_number: "2233445566", category: "belgian")
Restaurant.create(name: "Dragon's Den", address: "789 Dragon Rd, Beijing", phone_number: "3344556677", category: "chinese")
