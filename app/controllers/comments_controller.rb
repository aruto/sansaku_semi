class CommentsController < ApplicationController
	def create
		@place = Place.find(params[:place_id])
		@place.comments.create(params.require(:comment).permit(:name, :comment))
		redirect_to @place
	end
end
