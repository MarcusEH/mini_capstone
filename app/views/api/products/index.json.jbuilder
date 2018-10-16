json.array! @products do |product|
  json.id product.id
  json.name product.name
  json.image_url product.image_url
  json.price product.price
  json.description product.description
end