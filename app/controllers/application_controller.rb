class ApplicationController < ActionController::Base
    # protect_from_forgery with: :exception
    # include Auth
    # helper_method :current_user
    # private
    #
    # def current_user
    #     @_current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    # end
    #
    # def authenticate
    #     redirect_to log_in_path, alert: 'No estas autorizado' unless current_user
    # end
end
