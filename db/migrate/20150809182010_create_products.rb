class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :store_id, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.decimal :list_price, precision: 8, scale: 2
      t.string :image_url
      t.string :mfger
      t.string :model
      t.boolean :in_stock, default: true

      t.timestamps null: false
    end
  end
end
