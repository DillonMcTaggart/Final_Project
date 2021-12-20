class CheckoutController < ApplicationController
  def index; end

  def create
    id = params[:vgame_id] # from the form using the hidden field
    qty = params[:qty] # from the form using the hidden field
    session[:shopping_cart][id] = qty # = qty
    redirect_to root_path
  end

  def update
    id = params[:id] # from the form using the hidden field
    qty = params[:qty] # from the form using the hidden field
    session[:shopping_cart][id] = qty
    redirect_to root_path
  end

  def destroy
    id = params[:id] # from the form using the hidden field
    session[:shopping_cart].delete(id)
    redirect_to root_path
  end

  def purchase
    # create a new Order
    order = Order.create(sub_total: 100, GST: 0.07, PST: 0.05, HST: 0, status: 'Paid')

    # loop through each item in the shopping cart
    cart.each do |game|
      qty = session[:shopping_cart][game.id.to_s]
      OrderItem.create(order: order, vgame: game, quantity: qty, price: game.price)
    end
    # create a new OrderItem for each eitem in the cart

    session[:shopping_cart] = {}
  end
end
