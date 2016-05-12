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

end
