class ProductsController < ApplicationController

  def home

  end

  def all_products
    @title = "All Instruments"
    @products = Product.all
  end
  
  def guitar
    @title = "Guitar"
    @guitar = Product.first
  end

  def drum
    @title = "Drums"
    @drum = Product.second
  end

  def keyboard
    @title = "Keyboard"
    @keyboard = Product.third
  end  

  def index
   
   @products = Product.all 

    search_term = params[:search_term]
    sort_attribute = params[:sort]
    sort_order = params[:high]
    discount_price = params[:discount]
    random_product = params[:id]

    if search_term
      @products = @products.where("name like ?", "style like ?", "price like ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
    end  

    if discount_price
      @products = @products.where("price < ?", discount_price)
    end  

    if sort_attribute && sort_order
    @products = @products.order(sort_attribute => sort_order)
    else
    @products = Product.all 
    end

    if discount_price
      @products = @products.where("price < ?", discount_price)
    end  

  end

  def show
    @product = Product.find(params[:id])  
  end

  def new
    
  end

  def create
    @product = Product.create(
      name: params[:name],
      style: params[:style],
      price: params[:price],
      image: params[:image],
      description: params[:description],
      stock: params[:stock],
      supplier_id: params[:supplier_id]
      )
    render 'show.html.erb'
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

      @product.update(
      name: params[:name],
      style: params[:style],
      price: params[:price],
      image: params[:image],
      description: params[:description],
      stock: params[:stock],
      supplier_id: params[:supplier_id]
      )
    
    render 'show.html.erb'

  end 

  def random
    #@products = Product.all.sample
    #render 'show.html.erb'
    product = Product.all.sample
    redirect_to "/products/#{product.id}"
  end

end
