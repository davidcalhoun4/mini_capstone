class Api::CartedProductsController < ApplicationController


  before_action :authenticate_user

  

  def index
    @carted_products = current_user.carted_products.where(status: "carted")

    render "index.json.jb"
  end





  def create 
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
    )

      if @carted_product.save
        render "show.json.jb"
      else 
        render json: {errors: @carted_product.errors.full_messages }, status: :unprocessable_entity
    end

  end






  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.update(status: "removed")
    render json: { message: "Your carted product has been removed." }
  end






end
