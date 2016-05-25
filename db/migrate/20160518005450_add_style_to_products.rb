class AddStyleToProducts < ActiveRecord::Migration
  def change
    add_column :products, :style, :string
    add_column :products, :stock, :integer
    add_column :products, :price, :decimal, precision: 10, scale: 2
    
  end
end
