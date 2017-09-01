class BiosController < ApplicationController
	

	def index
		bios = Bio.all
	end

	def new
		@bio = Bio.new
	end

	def show
		@bio = Bio.find(params[:id])
	end

	def create
		@bio = current_user.bios.create(bio_params)
		if @bio.valid?
			flash[:success] = "Your bio was created"
			redirect_to root_path
		else
			flash.now[:error] = "Dude, it didn't save"
			render 'new', status: :unprocessable_entity
			
	end
end



	private

	def bio_params
		params.require(:bio).permit(:name, :age, :description, :hometown, :hobbies)
	end
end
