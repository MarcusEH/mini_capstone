class Api::OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity].to_i
    subtotal = 1.11 #so it's a decimal
    subtotal = product.price * quantity
    tax = 1.09
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
    @orders = Order.where(user_id: current_user.id)
    #@order = current_user.orders 
    #alt above
    
    render 'index.json.jbuilder'
  end
end
