class UsersController < ApplicationController
	before_filter :authorize, except: [:show]  if Rails.env.production?
	# GET /posts/new
  # GET /posts/new.json
	def new
		@user = User.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @user }
		end
	end

# GET /posts
# GET /posts.json
	def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
