class Chefs::CommentsController < CommentsController
	before_action :set_commentable

	private

		def set_commentable
			@commentable = Chef.find(params[:chef_id])
		end
end