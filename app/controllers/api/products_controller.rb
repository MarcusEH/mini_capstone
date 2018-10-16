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

  def create
    @product = Product.new(name: "clown nose", image_url: "someurlaskdnw", price: 111, description: "It's a clown nose, man!")
    @product.save
    render 'show.json.jbuilder'
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)

    @product.name = "coffee cup"
    @product.image_url = "someurlhere"
    @product.price = 13
    @product.description = "A plain coffee cup for your java."
    @product.save
    render "show.json.jbuilder"

  end
  

end
