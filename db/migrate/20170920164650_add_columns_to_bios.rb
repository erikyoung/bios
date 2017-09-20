class AddColumnsToBios < ActiveRecord::Migration[5.1]
  def change
  	add_column :bios, :strength, :integer
  	add_column :bios, :endurance, :integer
  	add_column :bios, :integrity, :integer
  	add_column :bios, :patience, :integer
  	add_column :bios, :empathy, :integer
  end
end
