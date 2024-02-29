# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    layout 'prelogin'
    # before_action :configure_sign_in_params, only: [:create]

    # GET /resource/sign_in
    # def new
    #   super
    # end

    # POST /resource/sign_in
    # def create
    #   super
    # end

    # DELETE /resource/sign_out
    def destroy
      super do
        return redirect_to '/users/sign_in', status: :see_other, alert: 'You have been logged out'
      end
    end

    # protected

    # If you have extra params to permit, append them to the sanitizer.
    # def configure_sign_in_params
    #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
    # end
  end
end