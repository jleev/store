class ProductsController < ApplicationController

before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  

  def index
    #@cart_count = current_user.carted_items.count

    @test_token = ENV['test_api_token']
    @test_secret = ENV['test_api_secret']

    @products = Product.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_value = params[:discount]
    category_type = params[:category]

    if category_type
      @products = Category.find_by(name: category_type).products
    end  

    if discount_value
      @products = @products.where("price < ?", discount_value)
    end

    if sort_order && sort_attribute
      @products = @products.order(sort_attribute => sort_order)
    elsif sort_attribute
      @products = @products.order(sort_attribute)
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      stock: params[:stock],
      )

    if @product.save

    Image.create(url: params[:image], product_id: @product_id) if params[:image] != ""

    flash[:success] = "Product Created"
    redirect_to "/products/#{@product.id}"
    else
      render :new
    end 
  end

  def show
    @product = Product.find_by(id: params[:id])

    @tax = @product.tax
    @total = @product.total
  end

  def edit
      @product = Product.find_by(id: params[:id])
  end

  def update
    #if user_signed_in && current_user.admin
    if @product = Product.find_by(id: params[:id])
        @product.update(
          name: params[:name],
          description: params[:description],
          price: params[:price],
          stock: params[:stock]
          )
   
    flash[:success] = "Product Updated"
    redirect_to "/products/#{@product.id}"

    else
      render :edit
    end 
    #else
      #redirect_to "/"
    #end

  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product Erased"
    redirect_to "/"
  end
  

end

  #def random
    #Product = Product.all.sample
    #redirect_to "/products/#{novelty.id}"
  #end




