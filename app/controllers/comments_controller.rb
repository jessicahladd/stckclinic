class CommentsController < ApplicationController
	def create
		@comment = Comment.new(params[:comment])
		@comment.clinic_id = params[:clinic_id]

		@comment.save

		redirect_to clinic_path(@comment.clinic)
	end
end
