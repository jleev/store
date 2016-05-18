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
      stock: params[:stock]
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
      stock: params[:stock]
      )
    
    render 'show.html.erb'

  end 

end
