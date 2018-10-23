# Product.create!([
#   {name: "Chicago Bears Khalil Mack Jersey", price: "190.0", image_url: "https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3281000/altimages/ff_3281276alt1_full.jpg&w=2000", description: "High quality official Chicago Bears Jersey! Navy blue."},
#   {name: "#2 pencil", price: "1.0", image_url: "https://cdn.shopify.com/s/files/1/0644/8811/products/Generals_Supreme_pencil_No_1_1024x1024.jpg?v=1492149626", description: "High quality #2 lead pencil. Don't chew it."},
#   {name: "Cowboy Hat 2.0", price: "1000000.0", image_url: "https://smhttp-ssl-40058.nexcesscdn.net/media/catalog/product/cache/1/image/1200x1200/9df78eab33525d08d6e5fb8d27136e95/C/F/CFDTNA-304007_1.jpg", description: "This hat is dangerous. Are you 'cowboy' enough? Probably not. stay away"},
#   {name: "mechanical keyboard", price: "140.0", image_url: "https://cdn.shopify.com/s/files/1/0549/2681/products/mechanical-keyboard-the-glorious-gmmk-1.jpg?v=1525907477", description: "RGB backlit mechanical gaming keyboard. generic."},
#   {name: "mechanical keyboard", price: "140.0", image_url: "https://cdn.shopify.com/s/files/1/0549/2681/products/mechanical-keyboard-the-glorious-gmmk-1.jpg?v=1525907477", description: "RGB backlit mechanical gaming keyboard. generic."},
#   {name: "clown nose", price: "111.0", image_url: "someurlaskdnw", description: "It's a clown nose, man!"},
#   {name: "clown nose", price: "111.0", image_url: "someurlaskdnw", description: "It's a clown nose, man!"},
#   {name: "coffee cup", price: "13.0", image_url: "someurlhere", description: "A plain coffee cup for your java."},
#   {name: "clown nose", price: "111.0", image_url: "someurlaskdnw", description: "It's a clown nose, man!"},
#   {name: "paper fan", price: "50.0", image_url: "blahblahurl", description: "why would you want this?"},
#   {name: "bag o' keys", price: "60.0", image_url: "bleephblahurl", description: "why would you want this? hmm"}
# ])


products = Product.all

products.each do |product|
  product.supplier_id = rand(1..4)
  product.save

 p product.errors.full_messages
end