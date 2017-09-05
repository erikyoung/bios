class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :bio
	mount_uploader :picture, PictureUploader
end
