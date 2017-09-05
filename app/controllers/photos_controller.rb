class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end

	def create
		@bio = Bio.find(params[:bio_id])
		@bio.photos.create(bio_params)
		redirect_to bio_path(@bio)
	end

	private

	def photo_params
		params.require(:photo).permit(:picture, :caption)
	end
end
