class Usuarios::RegistrationsController < Devise::RegistrationsController
 before_filter :configure_sign_up_params, only: [:create]
 before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

   protected

   def configure_sign_up_params
     devise_parameter_sanitizer.for(:sign_up){|u| u.permit(:nombre, :telefono, :email, :password, :password_confirmation, :identificacion)}
   end

   def after_sign_up_path_for(resource)
     super(resource)
   end

   def after_inactive_sign_up_path_for(resource)
     super(resource)
   end
end
