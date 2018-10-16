require 'unirest'

require 'awesome_print'

response = Unirest.get("http://localhost:3000/api/products")

ap response.body

response = Unirest.get("http://localhost:3000/api/products/1")

ap response.body

response = Unirest.post("localhost:3000/api/products")

ap response.body

#update

response = Unirest.patch("localhost:3000/api/products/9",
  parameters: {
    input_name: "paper fan",
    input_image_url: "blahblahurl",
    # input_price: 50,
    input_description: "why would you want this?"
  }
)

ap response.body