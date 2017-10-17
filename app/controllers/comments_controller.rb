class CommentsController < ApplicationController
	before_action :authenticate_user!

	def index
		@comments = Comment.all
	end

	def new
		@comment = Comment.new
	end

	def create
		@bio = Bio.find(params[:bio_id])
		@bio.comments.create(comment_params.merge(user: current_user))
		redirect_to bio_path(@bio)
	end

	private

	def comment_params
		params.require(:comment).permit(:message)
	end
end


