class RegistrationController < Devise::RegistrationsController

	def after_sign_up_path_for(resource)
		edit_user_path(current_user.id)
	end

   def create
   	@user = User.new(params[:user])
   	params[:user][:password] = generated_password
   	params[:user][:password_confirmation] = generated_password
   	super
	end
   	
   	def generated_password
   		Devise.friendly_token
   	end
   	
end
