class AddGuestIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :guest_id, :integer
    remove_column :orders, :address_id, :integer
  end
end
