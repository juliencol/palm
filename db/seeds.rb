puts "Cleaning database..."
Island.destroy_all

puts "Creating 10 users..."
10.times do
  user = User.create!(
    email: Faker::Internet.email,
    encrypted_password: Faker::Games::Pokemon,
    )
end

puts "Creating 10 islands..."
islands_data = []
islands_data << {
  name: "Le Wagon",
  location: "14 rue Crespin du Gast",
  description: "cool island, very nice to learn Ruby",
  booked: false,
  user_id: rand(1..10)
}

islands_data << {
  name: "Corsica",
  location: "near the sea",
  description: "nice island, the water is pretty clear",
  booked: false,
  user_id: rand(1..10)
}

islands_data << {
  name: "Hawai",
  location: "somewhere",
  description: "good for surf",
  booked: false,
  user_id: rand(1..10)
}

islands_data << {
  name: "Mykonos",
  location: "somewhere in Greece",
  description: "you could meet beautiful women here...",
  booked: false,
  user_id: rand(1..10)
}

islands_data << {
  name: "Tahiti",
  location: "far away I guess",
  description: "I don't know I have never been there",
  booked: false,
  user_id: rand(1..10)
}

islands_data << {
  name: "Ireland",
  location: "Ireland, pretty obvious",
  description: "weird place",
  booked: false,
  user_id: rand(1..10)
}

islands_data << {
  name: "Bora Bora",
  location: "South Pacific",
  description: "nice to see",
  booked: false,
  user_id: rand(1..10)
}

islands_data << {
  name: "Santorini",
  location: "Greece",
  description: "very cute place",
  booked: false,
  user_id: rand(1..10)
}

islands_data << {
  name: "Java",
  location: "server side",
  description: "an island with the name of a programming language..",
  booked: false,
  user_id: rand(1..10)
}

islands_data << {
  name: "Milos",
  location: "Greece",
  description: "Pretty island lost in Greece",
  booked: false,
  user_id: rand(1..10)
}

Island.create!(islands_data)
puts "Everything worked just fine."


