class Api::ImagesController < ApplicationController
  before_action :authenticate_admin
  def create
    @image = Image.new(
      url: params[:input_url],
      product_id: params[:input_product_id]
      )
    @image.save

    render json: {message: "you have added your image successfully"}
    
  end
end
