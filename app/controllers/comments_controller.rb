class CommentsController < ApplicationController

    def create
		@post = Post.find(params[:post_id])
	 	@comment = @post.comments.create(params[:comment].permit(:name, :comment))
		redirect_to post_path(@post)	
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end

	def update
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		if @comment.update(params[:comment].permit(:name, :comment))
					# if @comment.update(params[:comment])
			redirect_to @post
		else 
			render 'edit'
		end
	end

	def edit
		@post = Post.find(params[:id])
	end
end
