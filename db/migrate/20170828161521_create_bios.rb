class CreateBios < ActiveRecord::Migration[5.1]
  def change
    create_table :bios do |t|
    	t.string :name
    	t.integer :age
    	t.text :description
    	t.string :hometown
    	t.string :hobbies

      t.timestamps
    end
  end
end
