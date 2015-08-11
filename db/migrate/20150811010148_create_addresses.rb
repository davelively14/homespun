class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :street1
      t.string :street2
      t.string :city
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
