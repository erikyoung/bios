class BiosController < ApplicationController

	def index
		bios = Bio.all
	end

	def new
		@bio = Bio.new
	end

	def show
		@bio = Bio.find(bio_params)
		@bio = Bio.find(params[:id])
	end

	def create
		@bio = Bio.new(params[:id])
		if @bio.save
			flash[:success] = "Your bio was created"
			redirect_to @bio
		else
			render :new, status: :unprocessable_entity
		end
	end


	private

	def bio_params
		params.require(:bio).permit(:name, :age, :description, :hometown, :hobbies)
	end
end
