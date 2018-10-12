require 'unirest'

response = Unirest.get("localhost:3000/api/products")

response = Unirest.get("localhost:3000/api/firstproduct")
p response.body