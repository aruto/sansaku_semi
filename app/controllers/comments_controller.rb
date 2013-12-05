class CommentsController < ApplicationController
	def create
		place = Place.find params[:place_id]
		place.comments.create params[:comment]
		redirect_to place
	end
end
