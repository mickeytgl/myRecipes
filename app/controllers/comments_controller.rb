class CommentsController < ApplicationController
	before_action :require_user

	def create
		@comment = @commentable.comments.new comment_params
		@comment.chef_id = current_user
		@comment.save
		redirect_to @commentable, notice: "Thanks for the contribution!"
	end

	private

		def comment_params
			params.require(:comment).permit(:body)
		end
end