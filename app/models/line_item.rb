class LineItem < ActiveRecord::Base
  attr_accessible :product, :product_id, :cart_id, :quantity, :cart
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  
  def total_price
  	product.price * quantity
  end
  
end
