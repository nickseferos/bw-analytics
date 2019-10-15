class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:lname, :fname, :terminal_id])
        devise_parameter_sanitizer.permit(:account_update, keys: [:fname, :lname, :terminal_id])
      end
end
