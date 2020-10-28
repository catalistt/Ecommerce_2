class CreateVariations < ActiveRecord::Migration[5.2]
  def change
    create_table :variations do |t|
      t.integer :size
      t.integer :color

      t.timestamps
    end
  end
end
