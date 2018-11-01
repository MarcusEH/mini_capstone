class Api::SuppliersController < ApplicationController
  before_action :authenticate_admin
  def show
    @supplier = Supplier.find_by(id: params[:id])

    render 'show.json.jbuilder'
    
  end

  def index
    @suppliers = Supplier.all

    render 'index.json.jbuilder'
  end

  def create
    @supplier = Supplier.new(
      name: params[:input_name],
      email: params[:input_email],
      phone_number: params[:input_phone_number]
      )
    @supplier.save
    render 'show.json.jbuilder'
    
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:input_name] || @supplier.name
    @supplier.email = params[:input_email] || @supplier.email
    @supplier.phone_number = params[:input_phone_number] || supplier.phone_number
    @supplier.save

    render 'show.json.jbuilder'
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy

    render json: {message: "you successfully deleted this supplier"}
    
  end
end
