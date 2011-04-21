class StoreController < ApplicationController
  def index
    @products = Product.salable_items
  end
  private
  def find_cart
    session[:cart] =|| Cart.new
  end
end
