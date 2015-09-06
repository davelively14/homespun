class AddGuestIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :guest_id, :integer
  end
end
