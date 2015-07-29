class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.text :description
      t.string :slug

      t.timestamps null: false
    end
    add_index :stores, :slug, unique: true
  end
end
