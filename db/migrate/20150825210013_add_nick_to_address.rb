class AddNickToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :nick, :string
  end
end
