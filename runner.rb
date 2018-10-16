require 'unirest'

require 'awesome_print'

response = Unirest.get("http://localhost:3000/api/products")

ap response.body

response = Unirest.get("http://localhost:3000/api/products/1")

ap response.body