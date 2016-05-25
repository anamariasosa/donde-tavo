class CartsController < ApplicationController
  before_filter :initialize_cart

  def add
    @cart.add_item params[:id]

    session["cart"] = @cart.serialize
    product = Product.find params[:id]
    new_quantity = product.quantity  - 1
    if new_quantity >= 0
      product.update_attribute(:quantity, new_quantity)
      redirect_to :back, notice: "Added #{product.name} to cart."
    end

  end

  def show

  end

  def checkout
  end

end
