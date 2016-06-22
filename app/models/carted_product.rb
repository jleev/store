class CartedProduct < ActiveRecord::Base

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }

  #validates :product_id, presense: true

  #validates :user_id, presense: true

  belongs_to :product

  belongs_to :order

  belongs_to :user

  def subtotal
    product.price * quantity
    
  end

  def price
    product.price
  end

  def name
    product.name
  end  

end
