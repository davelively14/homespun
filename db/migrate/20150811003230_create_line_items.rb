class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :product_id
      t.integer :order_id
      t.decimal :sales_price, precision: 8, scale: 2
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
