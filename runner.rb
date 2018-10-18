require 'unirest'

require 'awesome_print'

# response = Unirest.get("http://localhost:3000/api/products")

# ap response.body

# response = Unirest.get("http://localhost:3000/api/products/1")

# ap response.body

# response = Unirest.post("localhost:3000/api/products",
#   parameters: {
#     input_name: "bag o' keys",
#     input_image_url: "bleephblahurl",
#     input_price: 60,
#     input_description: "why would you want this? hmm"
#   }
# )

# ap response.body

#update

# response = Unirest.patch("localhost:3000/api/products/9",
#   parameters: {
#     input_name: "paper fan",
#     input_image_url: "blahblahurl",
#     # input_price: 50,
#     input_description: "why would you want this?"
#   }
# )

# ap response.body

response = Unirest.delete("localhost:3000/api/products/6")

ap response.body