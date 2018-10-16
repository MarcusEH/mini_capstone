class Api::ProductsController < ApplicationController
  # def products_all
  #   @products = Product.all
  #   render 'products.json.jbuilder'
  # end

  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  # def first_product
  #   @product = Product.first
  #   render 'product_one_view.json.jbuilder'
  # end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render 'show.json.jbuilder'
  end
  

end
