class CreateArtisans < ActiveRecord::Migration
  def change
    create_table :artisans do |t|
      t.string :role
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
