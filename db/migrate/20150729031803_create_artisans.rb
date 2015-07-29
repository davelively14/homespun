class CreateArtisans < ActiveRecord::Migration
  def change
    create_table :artisans do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
