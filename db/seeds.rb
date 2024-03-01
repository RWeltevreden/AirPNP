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
  name: "Big Party Tent",
  price: "#{rand(1..200)} €",
  description: "Perfect for birthdays, weddings, corporate events, or any special occasion.
  Can fit up to 50 people",
  location: "Marcantilaan, Amsterdam")

file_url = "https://images.unsplash.com/photo-1692166927778-056466153552?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg"
file = URI.open(file_url)
item1.photo.attach(io: file, filename: "50tent.png", content_type: "image/png")
item1.save!

item2 = Item.new(
  user: user1,
  name: "table",
  price: "#{rand(1..200)} €",
  description: "Create the perfect layout for an unforgettable dining experience.
  Suited for outdoors",
  location: "Keizersgracht, Amsterdam")

file_url = "https://www.coku.co.uk/cdn/shop/products/9D6C3F91-95C9-421A-BC54-46136641C88F_1445x.jpg?v=1682000784.jpg"
file = URI.open(file_url)
item2.photo.attach(io: file, filename: "table.png", content_type: "image/png")
item2.save!

item3 = Item.new(
  user: user1,
  name: "disco ball",
  price: "#{rand(1..200)} €",
  description: "Barely used, but excellent working disco ball. Creates a beautiful atmosphere",
  location: "Rembrandtweg, Amsterdam")

file_url = "https://cdn.shopify.com/s/files/1/0688/8872/3766/files/disco_ball_invented_1_480x480.jpg?v=1684972239.jpg"
file = URI.open(file_url)
item3.photo.attach(io: file, filename: "discoball.png", content_type: "image/png")
item3.save!

item4 = Item.new(
  user: user2,
  name: "Party hats",
  price: "#{rand(1..200)} €",
  description: "I am renting out 30 party hats, available in different colors.
  The hats come in one size that fits all",
  location: "Dam 5, Amsterdam")

file_url = "https://i.etsystatic.com/10559245/r/il/906903/2046350675/il_570xN.2046350675_hvu8.jpg"
file = URI.open(file_url)
item4.photo.attach(io: file, filename: "partyhats.png", content_type: "image/png")
item4.save!

item5 = Item.new(
  user: user2,
  name: "Outdoor lights",
  price: "#{rand(1..200)} €",
  description: "Comes with adjustable brightness levels and color options. Length is 6 meters",
  location: "Muntplein, Amsterdam")

file_url = "https://m.media-amazon.com/images/I/81qfKN5-OFS._AC_UF894,1000_QL80_.jpg"
file = URI.open(file_url)
item5.photo.attach(io: file, filename: "outdoorlights.png", content_type: "image/png")
item5.save!

item6 = Item.new(
  user: user2,
  name: "Stereo set",
  price: "#{rand(1..200)} €",
  description: "Brand new stereo set that does not get used enough. Comes with a microphone and a speaker.",
  location: "Laan van Langerhuize, Amstelveen")

file_url = "https://cdn.myonlinestore.eu/93bf9c9a-6be1-11e9-a722-44a8421b9960/image/cache/full/dda2ba5fabaa45cd53659addcf4212195ca579a9.jpg?20240214105342.jpg"
file = URI.open(file_url)
item6.photo.attach(io: file, filename: "stereo.png", content_type: "image/png")
item6.save!

item7 = Item.new(
  user: user2,
  name: "Glow sticks",
  price: "#{rand(1..200)} €",
  description: "Crafted from safe materials, the glow sticks cater to all age groups.
  Available in 5 different colors",
  location: "Prinsengracht, Amsterdam")

file_url = "https://i.etsystatic.com/31178789/r/il/ba8375/3643189366/il_570xN.3643189366_p826.jpg"
file = URI.open(file_url)
item7.photo.attach(io: file, filename: "glowsticks.png", content_type: "image/png")
item7.save!


item8 = Item.new(
  user: user3,
  name: "Party tent",
  price: "#{rand(1..200)} €",
  description: "Easy to set up and dismantle. Can fit up to 30 people",
  location: "Spui, Amsterdam")

file_url = "https://emielspartyverhuur.nl/wp-content/uploads/2016/11/o16bwmya.bmp"
file = URI.open(file_url)
item8.photo.attach(io: file, filename: "bigtent.png", content_type: "image/png")
item8.save!

item9 = Item.new(
  user: user3,
  name: "Outdoor table",
  price: "#{rand(1..200)} €",
  description: "Suitable for bbq's and outdoor parties. Pickup only.",
  location: "Spiegelgracht, Amsterdam")

  file_url = "https://www.thespruce.com/thmb/agMCiMTigXWwoplUPJTeHy1wQ6M=/4000x0/filters:no_upscale():max_bytes(150000):strip_icc()/SPR-outdoor-table-plans-5070848-hero-e56542f9054c4a92b888438f5e598fcc.jpg"
  file = URI.open(file_url)
  item9.photo.attach(io: file, filename: "bigtable.png", content_type: "image/png")
  item9.save!

item10 = Item.new(
  user: user3,
  name: "Champagne glasses",
  price: "#{rand(1..200)} €",
  description: "Good quality glasses, available in different colors",
  location: "De Singel, Amsterdam")

  file_url = "https://savagevines.co.uk/wp-content/uploads/2021/11/L-Atelier-Du-Vin-Champagne-Glass-Set-900x0-c-default.jpg"
  file = URI.open(file_url)
  item10.photo.attach(io: file, filename: "glasses.png", content_type: "image/png")
  item10.save!

item11 = Item.new(
  user: user3,
  name: "Balloons",
  price: "#{rand(1..200)} €",
  description: "These balloons come in a wide array of shapes, sizes, and vibrant colors.",
  location: "De Singel, Amsterdam")

  file_url = "https://images.unsplash.com/photo-1581909199603-0de32b43ffd2?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg"
  file = URI.open(file_url)
  item11.photo.attach(io: file, filename: "balloons.png", content_type: "image/png")
  item11.save!

  item12 = Item.new(
    user: user3,
    name: "Party decorations",
    price: "#{rand(1..200)} €",
    description: "Variety of fun party decorations. More details after booking.",
    location: "De Singel, Amsterdam")

    file_url = "https://images.unsplash.com/photo-1532117182044-031e7cd916ee?q=80&w=2380&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg"
    file = URI.open(file_url)
    item12.photo.attach(io: file, filename: "decorations.png", content_type: "image/png")
    item12.save!

  item13 = Item.new(
    user: user3,
    name: "Boho party tents",
    price: "#{rand(1..200)} €",
    description: "5 boho tents available for outdoor parties.",
    location: "De Singel, Amsterdam")

    file_url = "https://images.unsplash.com/photo-1621744934759-4b5132843ea6?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg"
    file = URI.open(file_url)
    item13.photo.attach(io: file, filename: "boho.png", content_type: "image/png")
    item13.save!

    item14 = Item.new(
      user: user2,
      name: "cocktail glasses",
      price: "#{rand(1..200)} €",
      description: "Variation of cocktail glasses available for rent. Good quality. Max 15 glasses",
      location: "De Singel, Amsterdam")

      file_url = "https://images.unsplash.com/photo-1654074517750-f854f7c27d62?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg"
      file = URI.open(file_url)
      item14.photo.attach(io: file, filename: "cocktail.png", content_type: "image/png")
      item14.save!

      item15 = Item.new(
        user: user2,
        name: "Cozy party lights",
        price: "#{rand(1..200)} €",
        description: "Cozy party lights available for outdoor spaces",
        location: "De Singel, Amsterdam")

        file_url = "https://plus.unsplash.com/premium_photo-1664790560108-68d81ca35c0d?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg"
        file = URI.open(file_url)
        item15.photo.attach(io: file, filename: "cocktail.png", content_type: "image/png")
        item15.save!

    item16 = Item.new(
        user: user1,
        name: "Birthday hats",
        price: "#{rand(1..200)} €",
        description: "Fun for children's birthday parties. Available in different colors. Max 20 hats.",
        location: "De Singel, Amsterdam")

        file_url = "https://images.unsplash.com/photo-1581509756622-8d74eee78b52?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg"
        file = URI.open(file_url)
        item16.photo.attach(io: file, filename: "birthday.png", content_type: "image/png")
        item16.save!

        item17 = Item.new(
          user: user1,
          name: "Baby shower balloons",
          price: "#{rand(1..200)} €",
          description: "Beautiful balloons for a baby shower. Also available in pink!",
          location: "De Singel, Amsterdam")

          file_url = "https://images.unsplash.com/photo-1499781749692-e8274262c718?q=80&w=2295&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg"
          file = URI.open(file_url)
          item17.photo.attach(io: file, filename: "babyshower.png", content_type: "image/png")
          item17.save!

          item18 = Item.new(
            user: user1,
            name: "Halloween decorations",
            price: "#{rand(1..200)} €",
            description: "halloween decorations for a spooky atmosphere. 20 pieces.",
            location: "De Singel, Amsterdam")

            file_url = "https://images.unsplash.com/photo-1695302769496-3ed9d329c16e?q=80&w=2380&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg"
            file = URI.open(file_url)
            item18.photo.attach(io: file, filename: "halloween.png", content_type: "image/png")
            item18.save!

            item19 = Item.new(
              user: user3,
              name: "Glow lights",
              price: "#{rand(1..200)} €",
              description: "40 pieces glow lights available in blue and green!",
              location: "De Singel, Amsterdam")

              file_url = "https://images.unsplash.com/photo-1572037958571-83764a7e4f9e?q=80&w=2535&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg"
              file = URI.open(file_url)
              item19.photo.attach(io: file, filename: "sticks.png", content_type: "image/png")
              item19.save!


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

puts "create bookings"
# Booking that user1 received
booking1 = Booking.new(
  start_date: Date.today,
  end_date: Date.today + 1,
  item: item1,
  user: user2
)
booking1.save!

booking3 = Booking.new(
  start_date: Date.today,
  end_date: Date.today + 1,
  item: item3,
  user: user2
)
booking3.save!

# Booking that user1 made
booking2 = Booking.new(
  start_date: Date.today,
  end_date: Date.today + 1,
  item: item4,
  user: user1
)

booking2.save!

booking4 = Booking.new(
  start_date: Date.today,
  end_date: Date.today + 1,
  item: item9,
  user: user1
)
booking4.save!
