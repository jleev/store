class Product < ActiveRecord::Base

  TAX = 0.09

def sale_message
 if price.to_i >= 75
      " Discount Item"
 else
      " On Sale"
 end      

end

def tax
  price.to_i * TAX
end

def total
  price.to_i + tax
end

end
