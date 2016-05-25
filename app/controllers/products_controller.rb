class ProductsController < ApplicationController

  def index

    @products = Product.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_value = params[:discount]

    if discount_value
      @novelties = @novelties.where("price < ?", discount_value)
    end

    if sort_order && sort_attribute
      @products = @products.order(sort_attribute => sort_order)
    elsif sort_attribute
      @products = @products.order(sort_attribute)
    end
  end

  def new
  end

  def create
    @product = Product.create(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      stock: params[:stock],
      )

    flash[:success] = "Product Created"
    redirect_to "/products/#{@product.id}"
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
    @product = product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price],
      stock: params[:stock]
      )

    flash[:success] = "Product Updated"
    redirect_to "/product/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product Created"
    redirect_to "/"
  end

  #def random
    #Product = Product.all.sample
    #redirect_to "/products/#{novelty.id}"
  #end
end

