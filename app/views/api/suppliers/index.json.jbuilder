json.array! @suppliers do |supplier|
  json.partial! "supplier.json.jbuilder", supplier: supplier
end