class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories #this does what the below products method does and it must be in this order, do not flip the has many statements.

  # def products
  #   the_products = []
  #   #get the category products associated with the category. line below calls the "has many" association above.
  #   product_categories.each do |pc|
  #     the_products << pc.product
  #   end
  # end
end
