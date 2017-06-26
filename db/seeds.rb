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
      	Drink.create(name: "Screwdriver", description: "<p>2 Orange Juice</p><br><p>1 Vodka</p>", price: 550, image: "http://az659704.vo.msecnd.net/v1/image/c_lpad,w_1500,h_1500/v1400602509/cocktail_bloody_screwdriver-1.png", bar_id: bar.id)
      	Drink.create(name: "Bloody <br>Mary", description: "<p>2 Tomato Juice</p><br><p>1 Vodka</p>", price: 650, image: "http://az659704.vo.msecnd.net/v1/image/c_lpad,w_1500,h_1500/v1400602501/cocktail_bloody_mary-1.png", bar_id: bar.id)
      	Drink.create(name: "Cuba Libre", description: "<p>2 Coke</p><br><p>1 Rum</p>", price: 750, image: "http://www.drinkoftheweek.com/wp-content/thumbnails/1400.png", bar_id: bar.id)
      	Drink.create(name: "Tequila<br>Sunrise", description: "<p>2 Orange Juice</p><br><p>1 Tequila</p>", price: 550, image: "http://www.tequilasunrisecocktail.com/data/images/cocktail/3_1404922491_tequila.png", bar_id: bar.id)
      	Drink.create(name: "Mojito", description: "<p>2 Lime Juice</p><br><p>1 Rum</p>", price: 450, image: "http://www.pngmart.com/files/4/Mojito-Transparent-Background.png", bar_id: bar.id)
      	Drink.create(name: "Pina Colada", description: "<p>2 Pineapple</p><br><p>1 Cream of Coconut</p>", price: 550, image: "http://donq.com/assets/recipes/images/large/LazyPinaColada_large.png", bar_id: bar.id)
      	Drink.create(name: "Miami Vice", description: "<p>2 Fruit</p><br><p>1 Rum</p>", price: 850, image: "http://az659704.vo.msecnd.net/v1/image/c_lpad,w_1500,h_1500/v1400603979/cocktail_virgin_cherry_fizzy-1.png", bar_id: bar.id)
      	Drink.create(name: "CoronaRita", description: "<p>2 Margerita</p><br><p>1 Corona</p>", price: 950, image: "http://monterreymex.com/wordpress/wp-content/uploads/2015/05/coronarita.png", bar_id: bar.id)
      	Drink.create(name: "Caipirinha", description: "<p>2 Cachaca</p><br><p>1 Lime</p>", price: 950, image: "http://maloga.net/image/cache/data/caipi-500x500.png", bar_id: bar.id)
      end
Message.create(content: "Hello World!")
