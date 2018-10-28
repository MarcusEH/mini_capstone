class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:show, :index]
  #optionally could say only: [:create, :update, :destroy] I guess whichever makes more sense in the specific app

  def index
    # @products = Product.all
    p 'current user'
    p current_user
    search_term = params[:user_input]
    @products = Product.where('name LIKE ?', "%#{search_term}%")
    if params[:sort] == 'price'
      # sort by price
      @products = Product.order(:price => :asc)
    else
      #sort by id
      @products.order!(:id)
    end

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
    @product = Product.new(
      name: params[:input_name],
      # image_url: params[:input_image_url],
      price: params[:input_price],
      description: params[:input_description],
      supplier_id: params[:input_supplier_id],
      # user_id: current_user.id
    )
    @product.save
    if @product.save
      render "show.json.jbuilder"
    else
      render "error.json.jbuilder"
    end
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name = params[:input_name] || @product.name
    # @product.image_url = params[:input_image_url] || @product.image_url
    @product.price = params[:input_price] || @product.price
    @product.description = params[:input_description] || @product.description
    @product.supplier_id = params[:input_supplier_id] || @product.supplier_id
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
    if @product.save
      render "show.json.jbuilder"
    else
      render "error.json.jbuilder"
    end

  end

  def destroy
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.destroy

    render json: {message: "you successfully deleted this product"}

  end  

end
