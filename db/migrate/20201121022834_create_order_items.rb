class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :orderitems do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.decimal :product_price

      t.timestamps
    end
  end
end
