class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @advertisements = Advertisement.order(:title)
    @cart = current_cart
  end
end
