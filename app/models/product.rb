class Product < ActiveRecord::Base

  validates :name, presence: true
  validates :name, uniqueness: true
  
  validates :description, presence: true
  validates :description, length: { maximum: 200}

  validates :price, numericality: true
  validates :price, presence: true
  validates :price, format: {with: /\A\d+(?:\.\d{0,2})?\z/, message: "must be a price."}


  belongs_to :supplier

  has_many :categorized_products
  has_many :categories, through: :categorized_products

  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :carted_products
  has_many :users, through: :carted_products

  has_many :images

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
    images.first.url
  end

end
