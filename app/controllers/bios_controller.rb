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
		@bio = Bio.find(params[:id])
		

	end



	private

	def bio_params
		params.require(:bio).permit(:name, :age, :description, :hometown, :hobbies)
	end
end
