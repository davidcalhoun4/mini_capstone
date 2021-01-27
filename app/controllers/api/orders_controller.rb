class Api::OrdersController < ApplicationController

  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    # uses attr wrtitter and association method
    @order.subtotal = @order.quantity * @order.product.price
    @order.tax = @order.subtotal * 0.09
    @order.total = @order.subtotal + @order.tax 

    if @order.save
      render "show.json.jb"
    else 
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

end
