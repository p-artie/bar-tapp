# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 # Bar.create(email: "artie@gmail.com", password: "1234", name: "Gramps", logo: "https://mindysolomongallery.files.wordpress.com/2013/11/gramps1.jpg", address: "176 NW 24th ST", city: "Miami", state: "Florida", zipcode: "33127", phone: "3056992669", description: "Trendy hangout serving cocktails & craft beer amid live entertainment ranging from bands to comics.")

# Drink.create(name: "Screwdriver", description: "2-Orange Juice\r\n1-Vodka", price: 0.55e1, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: 1)


Bar.destroy_all
postres = HTTParty.post("https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyAxQsrLXpnyeclKsKCTcqZ9d7Nn92gRkn8").to_json
parse = JSON.parse(postres)
lat = parse["location"]["lat"]
lon = parse["location"]["lng"]

  @client = GooglePlaces::Client.new("AIzaSyDZXTCzH0s0nEwgcAlNom-O1bLGzB3V3o0", :radius => 500)
      res = @client.spots(lat, lon, :types => 'bar') 

      res.each do |bar| 
         Bar.create(email: "#{bar.name}@gmail.com", password: "1234", name: bar.name, address: bar.vicinity)
      end
      Bar.all.each do |bar|
      	Drink.create(name: "Screwdriver", description: "2-Orange Juice\r\n1-Vodka", price: 0.55e1, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: bar.id)
      	Drink.create(name: "Bloody Mary", description: "2-Tomato Juice\r\n1-Vodka", price: 0.65e1, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: bar.id)
      	Drink.create(name: "Cuba Libre", description: "2-Coke\r\n1-Rum", price: 0.75e1, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: bar.id)
      	Drink.create(name: "Tequila Sunrise", description: "2-Orange Juice\r\n1-Tequila", price: 0.55e1, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: bar.id)
      	Drink.create(name: "Mojito", description: "2-Lime Juice\r\n1-Rum", price: 0.45e1, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: bar.id)
      	Drink.create(name: "Pina Colada", description: "2-Pineapple\r\n1-Rum\r\n1-Cream of Coconut", price: 0.55e1, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: bar.id)
      	Drink.create(name: "Miami Vice", description: "2-Fruit\r\n1-Rum", price: 0.85e1, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: bar.id)
      	Drink.create(name: "CoronaRita", description: "2-Margerita\r\n1-Corona", price: 0.95e1, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: bar.id)
      	Drink.create(name: "Caipirinha", description: "2-Cachaca\r\n1-Lime", price: 0.95e1, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: bar.id)
      end


Order.find_or_create_by(email: "oscarnoe@gmail.com", stripe_token: "12345", bar_id: 1)

OrderItem.find_or_create_by(shots: 1, quantity: 1, instructions: "No ice!", drink_id: 1, order_id: 1)

