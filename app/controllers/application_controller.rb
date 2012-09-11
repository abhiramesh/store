class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :user
  
  def user
		@user = User.new
  end
  
end
