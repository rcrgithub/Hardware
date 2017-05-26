module Auth
    include ActionController::HttpAuthentication::Token::ControllerMethods

    def authenticate
        authenticate_or_request_with_http_token do |token, _options|
            User.find_by(token: token)
        end
    end
end
