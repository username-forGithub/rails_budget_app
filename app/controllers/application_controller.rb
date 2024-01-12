class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  AUTHENTICATE_USER_EXCEPT_CONTROLLERS = ['flash'].freeze
  before_action :configure_sign_up_params, if: :devise_controller?

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
  end

  def authenticate_user!
    return if AUTHENTICATE_USER_EXCEPT_CONTROLLERS.include?(params[:controller])

    super
  end
end
