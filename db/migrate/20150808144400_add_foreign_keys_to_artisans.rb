class AddForeignKeysToArtisans < ActiveRecord::Migration
  def change
    add_column :artisans, :user_id, :integer
    add_column :artisans, :store_id, :integer
  end
end
