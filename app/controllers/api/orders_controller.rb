class Api::OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity].to_i
    subtotal = product.price * quantity
    tax = product.tax * quantity
    total = product.total * quantity
    @order = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )
    if @order.save
      render "show.json.jbuilder"
    else
      render json: {message: "your order cannot be completed"}
    end
  end


  def show
    
    @order = Order.find_by(id: params[:id])
    if @order.user_id == current_user.id
      render 'show.json.jbuilder'
    else
      render json: {message: "no order for you!"}
    end
  end

  def index
    #@orders = Order.where(user_id: current_user.id)
    #alt above is not as good
    @order = current_user.orders 
    render 'index.json.jbuilder'
  end
end
