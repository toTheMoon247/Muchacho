# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Dropping old tables"
Restaurant.destroy_all
User.destroy_all

puts "Creating Fake Restaurants"
daphnes = Restaurant.new(name: "Daphne's", description: "Traditional Italian Dining", category: "Italian", address: "114 Draycott Ave, Chelsea, SW3 3AE")
daphnes.save!
scotts = Restaurant.new(name: "Scott's", description: "Dining and Cocktails in Mayfair", category: "British", address: "20 Mount Street, London, W1K 2HE")
scotts.save!
balthazar = Restaurant.new(name: "Balthazar", description: "French brasserie-style classics", category: "French", address: "4-6 Russell Street, Covent Garden, WC2B 5HZ")
balthazar.save!
sexyfish = Restaurant.new(name: "Sexy Fish", description: "Asain restaurant serving Japanese-inspired sushi", category: "Japanese", address: "Berkeley Square House, Berkeley Square, W1J 6BR")
sexyfish.save!
jsheeky = Restaurant.new(name: "J Sheeky", description: "Iconic London Fish Restaurant", category: "British", address: "28-32 St Martin’s Court London WC2N 4AL")
jsheeky.save!

puts "Creating a user"
jack = User.create!(email:"muchacho@gmail.com", password:"password")
