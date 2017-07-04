# Bar Tapp

This is an app we built as a final project during our time at [Wyncode](https://wyncode.co/). It allows you to order a drink and get notified when to pick it up without having to make lines or wait at the bar. Since this app requires the bar to be receiving orders and making drinks, you can virtually order the drinks but you will not be notified when the drink is ready...

## Getting Started

Assuming that you have rails installed. Fork the repo. Run: `rails db:create db:migrate db:seed` in your terminal. Run: `bundle install`. This will get your app ready to start the server. `rails s` will get the server going. 

Go to [localhost:3000](localhost:3000) on your browser of choice to see the app running. From here you are free to checkout the local bars in your area and "order" drinks. Have fun! 

## Built With

* [Rails](http://rubyonrails.org/) - Framework
* [ActionCable](http://edgeguides.rubyonrails.org/action_cable_overview.html) - Cross View Communication
* [Bootstrap](http://getbootstrap.com/) - Styling
* [Stripe](https://stripe.com/docs/checkout/rails) - Payment processing and credit card information storage
* [PostgreSQL](https://www.postgresql.org/) - Database
* [Google Geolocation API](https://developers.google.com/maps/documentation/geolocation/intro) - Geolocation
* [Google Places Library API](https://developers.google.com/places/web-service/search) - Bar information

## Authors

* [Arturo Polanco](https://github.com/artiepolanco)
* [Oscar Flores](https://github.com/oflores88)
* [John Travers](https://github.com/johntravers)

See also the list of [contributors](https://github.com/artiepolanco/bar-tapp/settings/collaboration) who participated in this project.

## Acknowledgments

* Thanks to [Jacqueline Polanco](https://www.linkedin.com/in/jepolanco/) for helping out with the logo!
