class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :image
      t.text :description
      t.string :stock

      t.timestamps null: false
    end
  end
end
