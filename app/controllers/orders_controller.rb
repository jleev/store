class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @product = Product.find(@order.product_id)
  end

  def new

  end 


  def create

    @order = Order.new(
      quantity: params[:quantity], 
      user_id: current_user.id, 
      product_id: params[:product_id]
      )

    @product = @order.product
    @order.calculate_subtotal(@product.price)
    @order.tax = @order.calculate_tax
    @order.total = @order.calculate_total


    @order.save
    
    flash[:success] = "Order Created"
    redirect_to "/orders/#{@order.id}"
  end

end
