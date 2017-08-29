class Bio < ApplicationRecord
	validates :name, :presence => true
	validates :age, :presence => true
	validates :description, :presence => true
	validates :hometown, :presence => true
	validates :hobbies, :presence => true

	has_many :bios
end
