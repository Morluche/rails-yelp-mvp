# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
chineseroom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "610561506511", category: "chinese" }
japaneseroom = { name: "pizzaroom", address: "8 Boundary St, London E2 7JE", phone_number: "610561506512", category: "japanese" }
italianroom = { name: "Dishoom", address: "9 Boundary St, London E2 7JE", phone_number: "610561506513", category: "italian" }
frenchroom = { name: "Dishoom", address: "10 Boundary St, London E2 7JE", phone_number: "610561506514", category: "french" }
belgiamroom = { name: "Dishoom", address: "11 Boundary St, London E2 7JE", phone_number: "610561506515", category: "belgian" }

[ chineseroom, japaneseroom, italianroom, frenchroom, belgiamroom].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
