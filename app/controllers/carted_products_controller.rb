class CartedProductsController < ApplicationController

before_action :authenticate_user!

    def index
      if user_signed_in? && current_user.carted_items.count > 0
      @cart = CartedProduct.where(user_id: current_user.id, status: 'carted')
      else
        flash[:info] = "You need to add items to your cart"
        redirect_to '/'
      end  
    end

    def new
      
    end

    def create
    @carted_product = CartedProduct.create(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted"
      )

    session[:cart_count] = nil
    flash[:success] = "Order Added"
    redirect_to "/cart"
    end

    def destroy
      @carted_product = CartedProduct.find(parames[:id])
      @carted_product.update(status: "removed")

      session[:cart_count] = nil
      flash[:success] = "Removed Item"
      redirect_to '/cart'
    end



end
