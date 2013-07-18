class CommentsController < ApplicationController
	before_filter :require_login
	def create
		@comment = Comment.new(params[:comment])
		@comment.clinic_id = params[:clinic_id]

		@comment.save

		redirect_to clinic_path(@comment.clinic)
	end
end
