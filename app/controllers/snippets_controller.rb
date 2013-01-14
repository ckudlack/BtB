class SnippetsController < ApplicationController
	# before_filter :authorize, except: [:show] if Rails.env.production?
	# def create
	# 	@post = Post.find(params[:post_id])
	# 	@snippet = @post.snippets.create(params[:snippet])
	# 	# @snippet.title = @post.title
	# 	redirect_to post_path(@post)
	# end

	# def destroy
	# 	@post = Post.find(params[:post_id])
	# 	@snippet = @post.snippets.find(params[:id])
	# 	@snippet.destroy
	# 	redirect_to post_path(@post)
	# end

	# def show
	# 	@post = Post.find(params[:id])
	# 	@snippet = @post.snippets.find(params[:id])

	# 	respond_to do |format|
 #      		format.html # show.html.erb
 #      		format.json { render json: @snippet }
 #  		end
	# end


#Copied Post Controller Code below:

before_filter :authorize, except: [:show] if Rails.env.production?
  # GET /posts
  # GET /posts.json
  # def index
  #   @posts = Post.all

  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @posts }
  #   end
  # end

  # GET /posts/1
  # GET /posts/1.json
  # def show
  #   @post = Post.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @snippet }
  #   end
  # end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Snippet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @snippet }
    end
  end

  # GET /posts/1/edit
  def edit
    @snippet = Snippet.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @snippet = Snippet.new(params[:snippet])

    respond_to do |format|
      if @snippet.save
        format.html { redirect_to @snippet, notice: 'Snippet was successfully created.' }
        format.json { render json: @snippet, status: :created, location: @snippet }
      else
        format.html { render action: "new" }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @snippet = Snippet.find(params[:id])

    respond_to do |format|
      if @snippet.update_attributes(params[:snippet])
        format.html { redirect_to @snippet, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end



end
