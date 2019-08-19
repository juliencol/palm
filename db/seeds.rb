
puts "Creating 10 users..."
10.times do
  user = User.create!(
    email: Faker::Internet.email,
    encrypted_password: Faker::Games::Pokemon,
    )
end
puts "It worked just fine."

puts "Creating 10 islands..."
10.times do
  island = Island.create!(
    name: Faker::Space.planet,
    location: Faker::Address.street_name,
    description: Faker::Lorem.word,
    booked: Faker::Boolean.boolean,
    user_id: rand(1..10)
  )
end
puts "It worked just fine."


