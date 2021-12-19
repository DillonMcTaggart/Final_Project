class OrderItemsController < ApplicationController
  def create
    current_cart.add_item(
      vgame_id: params[:vgame_id],
      quantity: params[:quantity]
    )
    redirect_to cart_path
  end
end
