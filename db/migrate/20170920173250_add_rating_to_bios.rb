class AddRatingToBios < ActiveRecord::Migration[5.1]
  def change
  	add_column :bios, :rating, :integer
  end
end
