puts "Cleaning database..."
Island.destroy_all
User.destroy_all

puts "Creating Bill Gates..."
bill_gates = User.create!(
  first_name: "Bill",
  last_name: "Gates",
  email: "billgates@gmail.com",
  password: "password"
)

puts "Creating Pierrick..."
pierrick = User.create!(
  first_name: "Pierrick",
  last_name: "Delage",
  email: "pierrick@gmail.com",
  password: "password"
)

puts "Creating 12 islands..."

le_wagon = Island.new(
  name: "Le Wagon",
  location: "16 Villa Gaudelet, 75011 Paris",
  description: "cool island, very nice to learn Ruby",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://res.cloudinary.com/dovu27lye/image/upload/v1566392263/LEWAGON_20151210_HD-1_vn9rbq.jpg",
  phototwo: "https://res.cloudinary.com/dovu27lye/image/upload/v1566392263/LEWAGON_20151210_HD-1_vn9rbq.jpg",
  photothree: "https://res.cloudinary.com/dovu27lye/image/upload/v1566392263/LEWAGON_20151210_HD-1_vn9rbq.jpg",
  price_by_night: 69
)

le_wagon.remote_photo_url = "https://res.cloudinary.com/dovu27lye/image/upload/v1566392263/LEWAGON_20151210_HD-1_vn9rbq.jpg"
le_wagon.save!

corsica = Island.new(
  name: "Corsica",
  location: "Bastia, Corsica",
  description: "nice island, the water is pretty clear",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://tourismleader.com/wp-content/uploads/2017/03/Corsica.jpg",
  price_by_night: 20
)

corsica.remote_photo_url = "https://tourismleader.com/wp-content/uploads/2017/03/Corsica.jpg"
corsica.save!


hawai = Island.new(
  name: "Hawai",
  location: "Honolulu",
  description: "good for surf",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://shrewsbury.comunicas.org/wp-content/uploads/sites/121/2016/02/Hawaii-1.jpg",
  price_by_night: 600
)

hawai.remote_photo_url = "https://shrewsbury.comunicas.org/wp-content/uploads/sites/121/2016/02/Hawaii-1.jpg"
hawai.save!

mykonos = Island.new(
  name: "Mykonos",
  location: "Ornos, Mykonos",
  description: "you could meet beautiful women here...",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://wallpapercave.com/wp/wp2163790.jpg",
  price_by_night: 43
)

mykonos.remote_photo_url = "https://wallpapercave.com/wp/wp2163790.jpg"
mykonos.save!

tahiti = Island.new(
  name: "Tahiti",
  location: "Papeete, French Polynesia",
  description: "I don't know I have never been there",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://images7.alphacoders.com/673/673731.jpg",
  price_by_night: 5000
)

tahiti.remote_photo_url = "https://images7.alphacoders.com/673/673731.jpg"
tahiti.save!

ireland = Island.new(
  name: "Ireland",
  location: "Dublin, Ireland",
  description: "weird place",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://mcdn.wallpapersafari.com/medium/28/53/gZce3x.jpg",
  price_by_night: 250
)

ireland.remote_photo_url = "https://mcdn.wallpapersafari.com/medium/28/53/gZce3x.jpg"
ireland.save!

bora_bora = Island.new(
  name: "Bora Bora",
  location: "Vaitape, French Polynesia",
  description: "nice to see",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://www.kinggoya.com/wp-content/uploads/2014/12/tetiaroa-med.jpg",
  price_by_night: 100
)

bora_bora.remote_photo_url = "https://www.kinggoya.com/wp-content/uploads/2014/12/tetiaroa-med.jpg"
bora_bora.save!

santorini = Island.new(
  name: "Santorini",
  location: "Thera, Greece",
  description: "very cute place",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://allhdwallpapers.com/wp-content/uploads/2015/06/Santorini-1.jpg",
  price_by_night: 43
)

santorini.remote_photo_url = "https://allhdwallpapers.com/wp-content/uploads/2015/06/Santorini-1.jpg"
santorini.save!

java = Island.new(
  name: "Java",
  location: "Jakarta, Indonesia",
  description: "an island with the name of a programming language..",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://3.bp.blogspot.com/-0RHWnDMpzGQ/XAeLQc7ieNI/AAAAAAAAB9Y/nc5psFI_wwErYiUdRI5P7ERz6rg5lTl0gCHMYCw/s1600/beaches-bali-java-clouds-beautiful-panorama-island-beach-sky.jpg",
  price_by_night: 55
)

java.remote_photo_url = "https://3.bp.blogspot.com/-0RHWnDMpzGQ/XAeLQc7ieNI/AAAAAAAAB9Y/nc5psFI_wwErYiUdRI5P7ERz6rg5lTl0gCHMYCw/s1600/beaches-bali-java-clouds-beautiful-panorama-island-beach-sky.jpg"
java.save!

milos = Island.new(
  name: "Milos",
  location: "Kanava, Greece",
  description: "Pretty island lost in Greece",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://www.voyagetips.com/wp-content/uploads/2018/10/milos.jpg",
  price_by_night: 67
)

milos.remote_photo_url = "https://www.voyagetips.com/wp-content/uploads/2018/10/milos.jpg"
milos.save!

ibiza = Island.new(
  name: "Ibiza",
  location: "Eivissa, Spain",
  description: "One the best place to party",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://tr-images.condecdn.net/image/YjMP3MVPyv0/crop/1620/f/gettyimages-934900434.jpg",
  price_by_night: 54
)

ibiza.remote_photo_url = "https://tr-images.condecdn.net/image/YjMP3MVPyv0/crop/1620/f/gettyimages-934900434.jpg"
ibiza.save!

naxos = Island.new(
  name: "Naxos",
  location: "Greece",
  description: "One great place is Greece",
  booked: false,
  user_id: bill_gates.id,
  photo: "https://www.farosvilla.gr/wp-content/uploads/sites/267/2018/02/alyko-beach_in_naxos-1024x686.jpg",
  price_by_night: 70
)

naxos.remote_photo_url = "https://www.farosvilla.gr/wp-content/uploads/sites/267/2018/02/alyko-beach_in_naxos-1024x686.jpg"
naxos.save!

puts "Everything worked just fine."
