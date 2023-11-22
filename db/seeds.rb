# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
KFC = {name: 'KFC', address: '7 Boundary St, Paris E2 7JE', phone_number: '70304056998', category: 'french'}
pizza_hut =  { name: 'Pizza Hut', address: '56A Vican High St, Rome E1 6PQ', phone_number: '70304056998', category: 'italian'}
dune = { name: 'Dune', address: '7 Kim St, Japan E2 7JE', phone_number: '49030405600', category: 'japanese'}
chan =  { name: 'Chan', address: '56A Shoreditch High St, China E1 6PQ', phone_number: '01304056998', category: 'chinese' }
dishoom = { name: 'Dishoom', address: '7 Boundary St, Belgium E2 7JE', phone_number: '60304056998', category: 'belgian' }

[KFC, pizza_hut, dune, chan, dishoom].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
