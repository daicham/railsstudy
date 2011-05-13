class StoreController < ApplicationController
  def index
    @products = Product.salable_items
  end
  def add_to_cart
    product = Product.find(params[:id])
    @cart = find_cart
    @cart.add_product(product)
    redirect_to(:action => 'display_cart')
  rescue
    logger.error("無効な商品 #{params[:id]} にアクセスしようとしました")
    redirect_to_index('無効な商品です')
  end
  def display_cart
    @cart = find_cart
    @items = @cart.items
    if @items.empty?
      redirect_to_index('現在、カートには商品が入っていません')
    end
  end
  def empty_cart
    find_cart.empty!
    redirect_to_index('カートが空になりました')
  end
  private
  def find_cart
    session[:cart] ||= Cart.new
  end
  def redirect_to_index(msg = nil)
    flash[:notice] = msg if msg
    redirect_to(:action => 'index')
  end
end
