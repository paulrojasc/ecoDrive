class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    Pagy::DEFAULT[:items] = 10
    include Pagy::Backend
    require 'pagy/extras/bootstrap'

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
        devise_parameter_sanitizer.permit(:account_update, keys: [:role])
    end

    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
            redirect_to cars_path, notice: "You are not authorized to perform this action"
        end
    end

end
