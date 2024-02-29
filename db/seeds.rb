# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "destroying all items"
Item.destroy_all
puts "destroying all users"
User.destroy_all

# users = [user1, user2, user3]

# users.each do |user|
#   10.times do |i|
#     name = "Item #{i + 1}"
#     description = "Description for Item #{i + 1}"

#     item = Item.new(
#       user: user,
#       name: name,
#       description: description,
#       location: ["Centrum", "Oost", "West", "Nieuw-West", "Noord", "Zuid", "Zuidoost"].sample,
#       price: "#{rand(1..200)} €"
#     )

#     file_url = "https://unsplash.com/s/photos/party-accessories#{i + 1}.jpg"
#     file = URI.open(file_url)
#     item.photo.attach(io: file, filename: "item#{i + 1}.jpg", content_type: "image/png")

#     item.save!
#   end
# end

puts "creating users"

user1 = User.new(email: "annaputt@hotmail.com", password: "test321")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657695963/tbsvduadlibit1544ebi.jpg")

user1.avatar.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save

user2 = User.new(email: "anna-karsten@hotmail.com", password: "TEST123")
file = URI.open("https://avatars.githubusercontent.com/u/156093237?v=4")

user2.avatar.attach(io: file, filename: "nes.png", content_type: "image/png")
user2.save

user3 = User.new(email: "romeeweltevreden@hotmail.com", password: "test123")
file = URI.open("https://avatars.githubusercontent.com/u/156311823?v=4")

user3.avatar.attach(io: file, filename: "nes.png", content_type: "image/png")
user3.save


puts "creating items"
item1 = Item.new(
  user: user1,
  name: "Party tent",
  price: "#{rand(1..200)} €",
  description: "Can fit up to 50 people",
  location: "Amsterdam")

file_url = "https://images.unsplash.com/photo-1530103862676-de8c9debad1d?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
file = URI.open(file_url)
item1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
item1.save!

item2 = Item.new(
  user: user1,
  name: "table",
  price: "#{rand(1..200)} €",
  description: "Suited for outdoors",
  location: "Amsterdam")

file_url = "https://www.coku.co.uk/cdn/shop/products/9D6C3F91-95C9-421A-BC54-46136641C88F_1445x.jpg?v=1682000784"
file = URI.open(file_url)
item2.photo.attach(io: file, filename: "table.png", content_type: "image/png")
item2.save!

item3 = Item.new(
  user: user1,
  name: "disco ball",
  price: "#{rand(1..200)} €",
  description: "Creating a beautiful atmosphere",
  location: "Oost")

file_url = "https://cdn.shopify.com/s/files/1/0688/8872/3766/files/disco_ball_invented_1_480x480.jpg?v=1684972239"
file = URI.open(file_url)
item3.photo.attach(io: file, filename: "discoball.png", content_type: "image/png")
item3.save!

item4 = Item.new(
  user: user2,
  name: "Party hats",
  price: "#{rand(1..200)} €",
  description: "20 hats", location: "Amsterdam")

file_url = "https://i.etsystatic.com/10559245/r/il/906903/2046350675/il_570xN.2046350675_hvu8.jpg"
file = URI.open(file_url)
item4.photo.attach(io: file, filename: "partyhats.png", content_type: "image/png")
item4.save!

item5 = Item.new(
  user: user2,
  name: "Outdoor lights",
  price: "#{rand(1..200)} €",
  description: "5 meters",
  location: "West")

file_url = "https://m.media-amazon.com/images/I/81qfKN5-OFS._AC_UF894,1000_QL80_.jpg"
file = URI.open(file_url)
item5.photo.attach(io: file, filename: "outdoorlights.png", content_type: "image/png")
item5.save!

item6 = Item.new(
  user: user2,
  name: "Stereo set",
  price: "#{rand(1..200)} €",
  description: "Suitable for parties",
  location: "Amstelveen")

file_url = "https://cdn.myonlinestore.eu/93bf9c9a-6be1-11e9-a722-44a8421b9960/image/cache/full/dda2ba5fabaa45cd53659addcf4212195ca579a9.jpg?20240214105342"
file = URI.open(file_url)
item6.photo.attach(io: file, filename: "stereo.png", content_type: "image/png")
item6.save!

item7 = Item.new(
  user: user2,
  name: "Glow sticks",
  price: "#{rand(1..200)} €",
  description: "Available in 5 different colors",
  location: "Amsterdam")

file_url = "https://i.etsystatic.com/31178789/r/il/ba8375/3643189366/il_570xN.3643189366_p826.jpg"
file = URI.open(file_url)
item7.photo.attach(io: file, filename: "glowsticks.png", content_type: "image/png")
item7.save!


item8 = Item.new(
  user: user3,
  name: "Party tent",
  price: "#{rand(1..200)} €",
  description: "Can fit up to 30 people",
  location: "Zuidoost")

file_url = "https://emielspartyverhuur.nl/wp-content/uploads/2016/11/o16bwmya.bmp"
file = URI.open(file_url)
item8.photo.attach(io: file, filename: "bigtent.png", content_type: "image/png")
item8.save!

item9 = Item.new(
  user: user3,
  name: "Outdoor table",
  price: "#{rand(1..200)} €",
  description: "Suitable for bbq's",
  location: "Noord")

  file_url = "https://www.thespruce.com/thmb/agMCiMTigXWwoplUPJTeHy1wQ6M=/4000x0/filters:no_upscale():max_bytes(150000):strip_icc()/SPR-outdoor-table-plans-5070848-hero-e56542f9054c4a92b888438f5e598fcc.jpg"
  file = URI.open(file_url)
  item9.photo.attach(io: file, filename: "bigtable.png", content_type: "image/png")
  item9.save!

item10 = Item.new(
  user: user3,
  name: "Champagne glasses",
  price: "#{rand(1..200)} €",
  description: "Different colors available",
  location: "Centrum")

  file_url = "https://savagevines.co.uk/wp-content/uploads/2021/11/L-Atelier-Du-Vin-Champagne-Glass-Set-900x0-c-default.jpg"
  file = URI.open(file_url)
  item10.photo.attach(io: file, filename: "glasses.png", content_type: "image/png")
  item10.save!


# photos = [
#   { key: 'lty6q0jzhix29dsxrror', item_id: 1 },
#   { key: 'eq9iwf1ujcm9ggo0q8yq', item_id: 2 },
#   { key: 'lga5qstdoinnxm4wblxz', item_id: 3 },
#   { key: 'w2indxzmcxr7x8co1z27', item_id: 4 },
#   { key: 'ufwutnnl01ivyhvjlyss', item_id: 5 },
#   { key: 'vvxou2ybp9zevjfwnyos', item_id: 6 },
#   { key: 'ij16qe9gwk2lratfpor0', item_id: 7 },
#   { key: 'cloudinary_key_for_photo_3', item_id: 8 },
#   { key: 'cloudinary_key_for_photo_3', item_id: 9 },
#   { key: 's1p3avf58nhtwfcxaox4', item_id: 10 },
# ]

# items.each do |item_data|
#   item = Item.create(item_data)
# end

# # # Create photos and associate them with items
# # photos.each_with_index do |photo, index|
# #   item.photos.create(key: photo_data[:key])
# # end

# item.save!
