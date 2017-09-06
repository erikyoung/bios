class AddPictureToBios < ActiveRecord::Migration[5.1]
  def change
  	add_column :bios, :picture, :string
  end
end
