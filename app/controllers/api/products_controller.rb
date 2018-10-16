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
    @product.name = params[:input_name] || @product.name
    @product.image_url = params[:input_image_url] || @product.image_url
    @product.price = params[:input_price] || @product.price
    @product.description = params[:input_description] || @product.description
    @product.save
    # @product.update(
    #   name: params[:input_name],
    #   image_url: params[:input_image_url],
    #   price: params[:input_price],
    #   description: params[:input_description]
    #   ) patch and save in one. no need for .save
    # @product.name = "coffee cup"
    # @product.image_url = "someurlhere"
    # @product.price = 13
    # @product.description = "A plain coffee cup for your java."
    # @product.save
    render "show.json.jbuilder"

  end
  

end
