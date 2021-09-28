# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
Game.destroy_all




puts ':gameling: Seeding games...'
Game.create!([
  {
    date: Date.current.to_datetime,
    title: 'Final Fantasy VI',
    image: 'https://www.mobygames.com/images/covers/l/22870-final-fantasy-iii-snes-front-cover.jpg',
  },
  {
    date: Date.current.to_datetime,
    title: 'Final Fantasy VII',
    image: 'https://www.mobygames.com/images/covers/l/34894-final-fantasy-vii-playstation-front-cover.jpg',
  },
  {
    date: Date.current.to_datetime,
    title: 'Final Fantasy VIII',
    image: 'https://www.mobygames.com/images/covers/l/26880-final-fantasy-viii-windows-front-cover.jpg',
  },
  {
    date: Date.current.to_datetime,
    title: 'Final Fantasy IX',
    image: 'https://www.mobygames.com/images/covers/l/5871-final-fantasy-ix-playstation-front-cover.jpg',
  },
  {
    date: Date.current.to_datetime,
    title: 'Final Fantasy XII',
    image: 'https://upload.wikimedia.org/wikipedia/en/thumb/2/27/Final_Fantasy_XII_Box_Art.png/220px-Final_Fantasy_XII_Box_Art.png',

  },

  {
    date: Date.current.to_datetime,
    title: 'Final Fantasy X',
    image: 'https://www.mobygames.com/images/covers/l/558569-final-fantasy-x-playstation-2-front-cover.jpg'
  }])
puts ':white_check_mark: Done seeding!'

puts "Seeding users..."

user1 = User.create(user_name: 'Tera6', password: 'riotblade94', cred_points: 0)
user2 = User.create(user_name: 'Cloud7', password: 'bustersword97', cred_points: 0)
user3 = User.create(user_name: 'Squall8', password: 'gunblade99', cred_points: 0)
user4 = User.create(user_name: 'Zidane9', password: 'ultimaweapon00', cred_points: 0)
user5 = User.create(user_name: 'Tidus10', password: 'brotherhood01', cred_points: 0)


puts "✅ Done seeding!"

puts "Seeding Gamecards..."



    gamecard = Gamecard.create(
        
        level_data: "Soul Shrine",
        image: "https://static.wikia.nocookie.net/finalfantasy/images/2/29/FFVI_Soul_Shrine_Exterior.png/revision/latest/scale-to-width-down/240?cb=20140501204515",
        note: "This dungeons mini-boss is tough. Stock up on heals.",
        user_id: User.all.sample.id,
        game_id: Game.find("Final Fantasy VI"))
    

    gamecard = Gamecard.create(
      
      level_data: "Thunder Plains",
      image: "https://lparchive.org/Final-Fantasy-X-(by-The-Dark-Id)/Update%2063/3-manfucklightning2.jpg",
      note: "I dodged lightning 150 times and all I got was a Mega-Elixir.",
      user_id: User.all.sample.id,
      game_id: Game.find("Final Fantasy X"))

    gamecard = Gamecard.create(
      
      level_data: "Rathwell's Tomb",
      image: "https://static.wikia.nocookie.net/finalfantasy/images/2/29/FFVI_Soul_Shrine_Exterior.png/revision/latest/scale-to-width-down/240?cb=20140501204515",
      note: "This dungeons mini-boss is tough. Stock up on heals.",
      user_id: User.all.sample.id,
      game_id: Game.find("Final Fantasy XII"))

    
puts "✅ Done seeding!"