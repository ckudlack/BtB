class SnippetsController < ApplicationController
	before_filter :authorize, except: [:show]
	def create
		@post = Post.find(params[:post_id])
		@snippet = @post.snippets.create(params[:snippet])
		# @snippet.title = @post.title
		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@snippet = @post.snippets.find(params[:id])
		@snippet.destroy
		redirect_to post_path(@post)
	end

	def show
		@post = Post.find(params[:id])
		@snippet = @post.snippets.find(params[:id])

		respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @snippet }
  		end
	end

end
