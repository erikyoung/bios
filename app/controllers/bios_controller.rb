class BiosController < ApplicationController

	def index
		bios = Bio.all
	end
end
