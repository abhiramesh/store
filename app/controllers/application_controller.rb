class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :user
  
  def user
		@user = User.new
  end

  def after_sign_in_path_for(resource)
  	edit_user_path(current_user.id)
  end

end
