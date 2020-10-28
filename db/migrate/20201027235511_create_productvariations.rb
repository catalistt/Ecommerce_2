class CreateProductvariations < ActiveRecord::Migration[5.2]
  def change
    create_table :productvariations do |t|
      t.references :product, foreign_key: true
      t.references :variation, foreign_key: true
      t.integer :stock

      t.timestamps
    end
  end
end
