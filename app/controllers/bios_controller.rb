class BiosController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@bios = Bio.all
	end

	def new
		@bio = Bio.new
	end

	def show
		@bio = Bio.find(params[:id])
	end

	def create
		@bio = Bio.find_by(params[:id])
		current_user.bios.create(bio_params)
		redirect_to root_path
	end


	private

	def bio_params
		params.require(:bio).permit(:name, :age, :description, :hometown, :hobbies, :picture, :caption)
	end
end
