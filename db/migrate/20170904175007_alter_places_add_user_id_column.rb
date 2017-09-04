class AlterPlacesAddUserIdColumn < ActiveRecord::Migration[5.1]
  def change
  	add_column :bios, :user_id, :integer
  	add_index :bios, :user_id
  end
end
