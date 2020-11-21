class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user_id, foreign_key: true
      t.decimal :total_amount
      t.boolean :finish, default: false

      t.timestamps
    end
  end
end
