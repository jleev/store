class Product < ActiveRecord::Base

  belongs_to :supplier

  has_many :categorized_products

  has_many :categories, through: :categorized_products

  has_many :images

  has_many :orders

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
j
def total
  price.to_i + tax
end

def image_preview_url
  images.image.first
  
end

end
