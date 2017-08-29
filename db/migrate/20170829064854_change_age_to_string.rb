class ChangeAgeToString < ActiveRecord::Migration[5.1]
  def change
  	change_column :bios, :age, :string
  end
end
