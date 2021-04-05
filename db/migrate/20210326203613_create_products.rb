class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.integer :stock, default: 0
      t.decimal :price
      t.string :sku, null: false

      t.timestamps
    end
  end
end
