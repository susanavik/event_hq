# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#
Event.destroy_all
Invite.destroy_all
User.destroy_all


puts "...Creating Users 🙎‍♀️🙍‍♂️"
users = [
  {name: "Carlos La Torre", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01HZS9Q336-1f74273d7034-512"},
  {name: "Colten Appleby", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01NNMVS9C5-d68e87b0c135-512"},
  {name: "Diana Liao", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01JBESM25S-75adb8bc35eb-512"},
  {name: "Christopher Kim", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01LYNW3TMM-de7dfc536650-512"},
  {name: "Henry Velasquez", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01N0PGUK55-667353f3a6ca-512"},
  {name: "Amanda Nikrant", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01HLHQ6JRH-a2f6a940e9d7-512"},
  {name: "Melissa Lawrence", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01ME61T70A-eff36ea99e86-512"},
  {name: "Radiyah Abdus-Sabur", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01MS0E5UGM-b6e1d5ff3843-512"},
  {name: "Jabair Khan", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01LQ3XCA9Y-c2b88ff33f15-512"},
  {name: "Yuri Nguyen", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01N31WKVTJ-a989d77fc8f4-512"},
  {name: "Sean Padden", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-UJW55RH1R-95bb92aacdc8-512"},
  {name: "Andre Powers", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01P99HC1B2-d2de4cdbe6e5-512"},
  {name: "Seth Cohen", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01MJQ8U7T3-63789d10f0b0-512"},
  {name: "Matt Newton", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01NN9ERSNM-3db34d69031b-512"},
  {name: "Shafee Rushdan", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01NT4W4VSQ-7cc81b5bc498-512"},
  {name: "menachem futerfas", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01FTL07RNE-45acc97293d2-512"},
  {name: "Susana Vik", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01MP4BMN58-1cd860a08ac6-512"},
  {name: "James Hoggard", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01KH0VVA0K-51f20d36793e-512"},
  {name: "Michelle Pathe", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U9C1QTFPC-e5129d5d4af5-512"},
  {name: "Toni Langley", bio: Faker::TvShows::Friends.quote, img_url: "https://ca.slack-edge.com/T02MD9XTF-U01JWUFBCQ0-4baa729d7cc6-512"}
]


users.each do |user|
  User.create(name: user[:name], bio: user[:bio], img_url: user[:img_url], username: user[:name].split[0], password: "pass123")
end 

events = [
  {name: "Garden Party", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Outing", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Feast", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Family Reunion", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Birtday Party", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Friendsgiving", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Christmas Party", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "21st Birthday Party", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Studio 54", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Dinner and Dancing", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Haloween Trick or Treating", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Watch Party", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Caroling Party", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Soccer Game", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Sunday BBQ", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Caroline and Thomas's Wedding", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id},
  {name: "Music Festival", location: Faker::Movies::HarryPotter.location, capacity: rand(1..25), description: Faker::Movies::HarryPotter.quote, date_and_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), user_id: User.all.sample.id}
]

events.each do |event|
  Event.create(name: event[:name], location: event[:location], capacity: event[:capacity], description: event[:description], date_and_time: event[:date_and_time], user_id: event[:user_id])
end 

puts '...Creating Invites 📝'
50.times do 
  Invite.create(title: "Come hang with me!", user_id: User.all.sample.id, event_id: Event.all.sample.id)
end 

50.times do 
  Friendship.create(followee_id: User.all.sample.id, follower_id: User.all.sample.id)
end 