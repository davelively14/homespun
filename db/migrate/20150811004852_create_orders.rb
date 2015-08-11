class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :address_id
      t.timestamp :date_ordered
      t.timestamp :date_processed
      t.timestamp :date_shipped

      t.timestamps null: false
    end
  end
end
