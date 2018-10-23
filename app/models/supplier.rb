class Supplier < ApplicationRecord
  def products
    Product.where(supplier_id: id)
    #will result in an array so it's plural
  end
end
