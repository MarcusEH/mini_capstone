json.id product.id
json.name product.name
json.image_url product.image_url
json.price product.price
json.description product.description
json.discounted product.is_discounted?
json.tax product.tax
json.total number_to_currency(product.total)
# json.friendly_total product.friendly_total