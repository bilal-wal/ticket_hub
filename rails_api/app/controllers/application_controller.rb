class ApplicationController < ActionController::API
  include ActionController::Serialization
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate_user_from_token!

  before_action :authenticate_user!

  private

  def authenticate_user_from_token!
    user = User.find_by_authentication_token(request.authorization)
    if user && Devise.secure_compare(user.authentication_token, request.authorization)
      sign_in user, store: false
    else
      return head :unauthorized
    end
  end
end
