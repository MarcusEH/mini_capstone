class Api::ProductsController < ApplicationController
  def products_all
    @products = Product.all
    render 'products.json.jbuilder'
  end

  def first_product
    @product = Product.first
    render 'product_one_view.json.jbuilder'
  end

end
