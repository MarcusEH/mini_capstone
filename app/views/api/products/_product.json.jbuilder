json.id product.id
json.name product.name
json.images product.images
json.price product.price
json.supplier_id product.supplier_id
json.supplier_name product.supplier.name
json.supplier_email product.supplier.email
json.supplier_phone_number product.supplier.phone_number
json.description product.description
json.discounted product.is_discounted?
json.tax product.tax
json.total number_to_currency(product.total)
# json.friendly_total product.friendly_total
# json.user_info product.current_user
json.user_info current_user