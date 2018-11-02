class Api::OrdersController < ApplicationController
  before_action:authenticate_user
  def create
    @carted_products = CartedProduct.where(user_id: current_user.id, status: 'carted')
    subtotal = 0
    @carted_products.each do |carted_product|
      # product = Product.find_by(id: carted_product.product_id)

      subtotal += carted_product.product.price * carted_product.quantity
      
      carted_product.status = "purchased"
    end
    tax = subtotal * 0.09
    total = subtotal + tax
    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )
    if @order.save
      @carted_products.each do |carted_product|
        carted_product.order_id = @order.id
        carted_product.save
      end

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
    
    @orders = current_user.orders 
    render 'index.json.jbuilder'
    
  end
end
