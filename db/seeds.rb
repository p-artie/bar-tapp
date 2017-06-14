# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 Bar.create(email: "artie@gmail.com", password: "1234", name: "Gramps", logo: "https://mindysolomongallery.files.wordpress.com/2013/11/gramps1.jpg", address: "176 NW 24th ST", city: "Miami", state: "Florida", zipcode: "33127", phone: "3056992669", description: "Trendy hangout serving cocktails & craft beer amid live entertainment ranging from bands to comics.")

Order.create(email: "oscarnoe@gmail.com", stripe_token: "12345")

Drink.create(name: "Screwdriver", description: "2-Orange Juice\r\n1-Vodka", price: 0.55e1, image: "http://www.drinkswap.com/images/da/2857.jpg")

OrderItem.create(shots: 1, quantity: 1, instructions: "No ice!", drink_id: 1, order_id: 1)
