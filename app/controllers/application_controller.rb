class ApplicationController < ActionController::Base
  before_action :current_cart

  def current_cart
    session[:shopping_cart] ||= {} # ShoppingCart.new(token: cart_token)
  end

  helper_method :cart

  private

  def cart
    Vgame.find(session[:shopping_cart].keys) # { 1: 2, 2: 1, 3:4 }
  end
  # def cart_token
  #   return @cart_token unless @cart_token.nil?

  #   session[:cart_token] ||= SecureRandom.hex(8)
  #   @cart_token = session[:cart_token]
  # end
end
