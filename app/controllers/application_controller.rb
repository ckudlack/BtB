class ApplicationController < ActionController::Base
  protect_from_forgery
  def authorize
  	unless admin?
  		redirect_to root_path
  		false
  	end
  end


  def admin?
  	@user = User.find(1)
  	false
  end

end
