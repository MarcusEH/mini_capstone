class Api::CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: 'carted'
    )
    if @carted_product.save
      render json: {message: "Your items have been added to your cart"}
    end
  end

  def index
    if current_user
      carted_products = CartedProduct.where(status: 'carted')
      @carted_products = carted_products.where(user_id: current_user.id)
      #could just use @carted_product = CartedProduct.where(status: 'carted', user_id: current_user.id) 
    else
      @carted_products = []
    end
    render 'index.json.jbuilder'
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.status = 'removed'
    if @carted_product.save
      render json: {message: "This/these items have been removed from your cart"}
    else
      render json: {message: "please be sure you have entered the correct information."}
    end
  end

end
