class UsersController < ApplicationController
  # skip_before_action :authenticate_user_from_token!
  # skip_before_action :authenticate_user!, only: [:index, :create]

  def me
    render json: current_user
  end

  def index
    @users = User.all

    render json: @users
  end

  def create
    @user = User.create User.new_with_password(user_params)
    if @user.valid?
      render json: @user, status: 200
    else
      render json: {errors: @user.error_response}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :company_id)
  end
end
