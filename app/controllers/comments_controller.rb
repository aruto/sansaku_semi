class CommentsController < ApplicationController
	def create
		place = Place.find params[:places_id]
		place.comments.create params[:comment]
		redirect_to place
	end
end
