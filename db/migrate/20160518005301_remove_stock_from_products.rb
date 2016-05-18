class RemoveStockFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :stock, :string
  end
end
