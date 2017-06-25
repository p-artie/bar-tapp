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

  @client = GooglePlaces::Client.new("AIzaSyBwQn-19m9txwOvboBVotY-5RnexPFMtzY", :radius => 500)
      res = @client.spots(25.7987956, -80.2042326, :types => 'bar')

      res.each do |bar|
         Bar.create(email: "#{bar.name}@gmail.com", password: "1234", name: bar.name, address: bar.vicinity)
      end
      Bar.all.each do |bar|
        #Add Margin Left Dynamically for Drink Margin: XXpx
      	Drink.create(name: "Screwdriver", description: "<p>2 Orange Juice</p><br><p>1 Vodka</p>", price: 550, image: "http://www.drinkswap.com/images/da/2857.jpg", bar_id: bar.id)
      	Drink.create(name: "Bloody Mary", description: "<p>2 Tomato Juice</p><br><p>1 Vodka</p>", price: 650, image: "http://cdn.liquor.com/wp-content/uploads/2014/01/recipe-hopped-up-bloody-mary.jpg", bar_id: bar.id)
      	Drink.create(name: "Cuba Libre", description: "<p>2 Coke</p><br><p>1 Rum</p>", price: 750, image: "http://shake-that.com/wp-content/uploads/2015/07/Cuba-Libre1-780x780.jpg", bar_id: bar.id)
      	Drink.create(name: "Tequila Sunrise", description: "<p>2 Orange Juice</p><br><p>1 Tequila</p>", price: 550, image: "http://www.foodiecrush.com/wp-content/uploads/2015/09/Tequila-Sunrise-foodiecrush.com-020.jpg", bar_id: bar.id)
      	Drink.create(name: "Mojito", description: "<p>2 Lime Juice</p><br><p>1 Rum</p>", price: 450, image: "http://cdn.liquor.com/wp-content/uploads/2010/09/herradura-tequila-mojito.jpg", bar_id: bar.id)
      	Drink.create(name: "Pina Colada", description: "<p>2 Pineapple</p><br><p>1 Cream of Coconut</p>", price: 550, image: "http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/import/2014/images/2012-06/7-frozen-pina-colada-400.jpg?itok=zXZ2ExPX", bar_id: bar.id)
      	Drink.create(name: "Miami Vice", description: "<p>2 Fruit</p><br><p>1 Rum</p>", price: 850, image: "http://cdn.shopify.com/s/files/1/1387/0585/products/Miami_Vice_grande.jpg?v=1471365702", bar_id: bar.id)
      	Drink.create(name: "CoronaRita", description: "<p>2 Margerita</p><br><p>1 Corona</p>", price: 950, image: "https://pull01-kegworks.netdna-ssl.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/o/corona-rita-b1_1_1.jpg", bar_id: bar.id)
      	Drink.create(name: "Caipirinha", description: "<p>2 Cachaca</p><br><p>1 Lime</p>", price: 950, image: "http://cdn3.foodviva.com/static-content/food-images/brazilian-drinks/caipirinha-cocktail/caipirinha-cocktail.jpg", bar_id: bar.id)
      end
Message.create(content: "Hello World!")
