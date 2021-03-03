# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0132435678", category: "french"}
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0132678909", category: "italian"}
pizza_hut = { name: "Pizza Hut", address: "Aubagne", phone_number: "0132678909", category: "italian" }
fonfon = { name: "Fonfon", address: "Lorgues", phone_number: "0132677634", category: "chinese" }
chez_bruno = { name: "Chez Bruno", address: "Lorgues", phone_number: "0132679087", category: "french" }

[ dishoom, pizza_east, pizza_hut, fonfon, chez_bruno ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
