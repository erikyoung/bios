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
		current_user.bios.create(bio_params)
		redirect_to root_path
	end


	private

	def bio_params
		params.require(:bios).permit(:name, :age, :description, :hometown, :hobbies)
	end
end
