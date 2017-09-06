class AddCaptionToBios < ActiveRecord::Migration[5.1]
  def change
  	add_column :bios, :caption, :string
  end
end
