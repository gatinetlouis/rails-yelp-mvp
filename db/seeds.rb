# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "There are #{Restaurant.count} restaurants"
puts "let's destroy all restaurants"
Restaurant.destroy_all
puts "let's seed it"

restaurants = [
  {name: 'Big mama', address:'Lille', category: 'italian'},
  {name: 'Mamacita', address:'Paris', category: 'french'},
  {name: 'Pizzeria', address:'Marseille', category: 'chinese'},
  {name: 'Suhsishop', address:'Toulouse', category: 'japanese'},
  {name: 'la famille', address:'Montpellier', category: 'french'}
]

Restaurant.create(restaurants)
puts "There are #{Restaurant.count} restaurants"
