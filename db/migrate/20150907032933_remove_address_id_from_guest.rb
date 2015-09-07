class RemoveAddressIdFromGuest < ActiveRecord::Migration
  def change
    remove_column :guests, :address_id, :integer
  end
end
