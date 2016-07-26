class UsersController < ApplicationController
  def me
    render json: current_user
  end

  def index
    @users = User.all

    render json: @users
  end

  def create
    # INFO: only agents will be created via this method
    @user = User.new user_params
    if @user.save
      render json: @user, status: 200
    else
      render json: {errors: @user.error_response}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :company_id).merge(
        password: SecureRandom.hex(4),
        role: User::ROLES[User::AGENT],
        company_id: current_user.company_id
    )
  end
end
