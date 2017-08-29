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
		if @bio
			flash[:success] = "Your bio was created"
			redirect_to root_path
		else
			flash.now[:error] = "Dude, it didn't save"
			render 'new'
		end
	else
		flash.now[:error] = "User not found"
		redirect_to action: 'new', show_hint: true
	end


	private

	def bio_params
		params.require(:bio).permit(:name, :age, :description, :hometown, :hobbies)
	end
end
