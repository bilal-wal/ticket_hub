module AuthenticationHelper
  def sign_in_as_a_valid_user
    @user ||= FactoryGirl.create(:user)
    @user.reset_authentication_token! unless @user.authentication_token
    # TODO: fix authentication for rspec
    # set_cookie "Authentication=#{@user.authentication_token}"
  end
end
