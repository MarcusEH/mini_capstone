require 'unirest'

require 'awesome_print'

response = Unirest.get("http://localhost:3000/api/products")

ap response.body

response = Unirest.get("http://localhost:3000/api/products/1")

ap response.body

response = Unirest.post("localhost:3000/api/products")

ap response.body

#update

response = Unirest.patch("localhost:3000/api/products/7")

ap response.body