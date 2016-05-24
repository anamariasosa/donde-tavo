class CartItem < ActiveRecord::Base
  attr_reader :product_id, :quantity

  def initialize product_id, quantity = 1
    @product_id = product_id
    @quantity = quantity
  end

  def increment
    @quantity = @quantity + 1
  end

  def product
    if Product.count > 0
      Product.find product_id
    end
  end

  def total_price
    if Product.count > 0
      product.price * quantity
    end
  end
end
