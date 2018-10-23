class Supplier < ApplicationRecord
 # has_many :products
 #works just like the below method. Method must be plural
  def products
    Product.where(supplier_id: id)
    #will result in an array so it's plural
  end
end
