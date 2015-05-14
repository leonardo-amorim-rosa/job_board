class CommentsController < ApplicationController

	def create
		@job = Job.find(params[:job_id])
		@comment = @job.comments.build(params[:comment])
		if @job.save
			flash[:notice] = 'Comment was created with success!'
		else
			flash[:alert] = "Comment can't created!"
		end	
		redirect_to @job
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to @comment.job, notice: "Comment destroyed with success!"
	end
	
end
