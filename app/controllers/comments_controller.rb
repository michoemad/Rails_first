class CommentsController < ApplicationController
	include CommentsHelper
	def create
		print comment_params
		@com = Comment.new(comment_params)
		@com.article_id = params[:article_id]

		#print "The stuff is #{comment_params}"
		@com.save

		redirect_to article_path(@com.article)

	end

end
