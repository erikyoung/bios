class Bio < ApplicationRecord
	validates :name, :presence => true
	
	validates :description, :presence => true
	validates :hometown, :presence => true
	

	
	belongs_to :user
	has_many :photos
	mount_uploader :picture, PictureUploader
end
