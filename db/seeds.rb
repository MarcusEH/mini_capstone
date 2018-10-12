# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
item4 =  Product.new(name: "mechanical keyboard", price: 140, image_url: "https://cdn.shopify.com/s/files/1/0549/2681/products/mechanical-keyboard-the-glorious-gmmk-1.jpg?v=1525907477", description: "RGB backlit mechanical gaming keyboard. generic.")
item4.save