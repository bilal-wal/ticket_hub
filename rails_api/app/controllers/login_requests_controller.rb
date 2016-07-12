class LoginRequestsController < ApplicationController
  before_action :set_login_request, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user_from_token!, only: [:index, :create]
  skip_before_action :authenticate_user!, only: [:index, :create]

  # GET /login_requests
  def index
    @login_requests = LoginRequest.all

    render json: @login_requests
  end

  # GET /login_requests/1
  def show
    render json: @login_request
  end

  # POST /login_requests
  def create
    @login_request = LoginRequest.new(login_request_params)

    if @login_request.save
      render json: @login_request, status: :created, location: @login_request
    else
      render json: @login_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /login_requests/1
  def update
    if @login_request.update(login_request_params)
      render json: @login_request
    else
      render json: @login_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /login_requests/1
  def destroy
    @login_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login_request
      @login_request = LoginRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def login_request_params
      params.require(:login_request).permit(:full_name, :email, :company_id)
    end
end
