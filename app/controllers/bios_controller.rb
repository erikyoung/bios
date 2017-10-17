class BiosController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@bios = Bio.all.paginate(page: params[:page], per_page: 2)

	end

	def new
		@bio = Bio.new
	end

	def show
		@bio = Bio.find(params[:id])
		@comment = Comment.new

	end

	def create
		@bio = Bio.find_by(params[:id])
		@bio = current_user.bios.create(bio_params)
		if @bio.save 
		 redirect_to root_path
		else
			render :new, status: :unprocessable_entity
		end
	end


	private

	def bio_params
		params.require(:bio).permit(:name, :description, :hometown, :picture, :rating)
	end
end
