json.array! @products do |product|
  json.name product.name
  json.price product.price
  json.url product.image_url
  json.description product.description
end