class Api::SuppliersController < ApplicationController

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

  
end
