# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "🏕️ Seeding users..."

user1 = User.create(user_name: 'Tanooki4', password: 'Nookman6')
user2 = User.create(user_name: 'Paper17', password: 'Sama77')
user3 = User.create(user_name: 'Bleux8', password: 'MMist007')

puts "✅ Done seeding!"




    
puts "✅ Done seeding!"