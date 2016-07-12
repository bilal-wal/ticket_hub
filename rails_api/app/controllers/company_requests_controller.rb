class CompanyRequestsController < ApplicationController
  before_action :set_company_request, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user_from_token!, only: :index
  skip_before_action :authenticate_user!, only: :index

  # GET /company_requests
  def index
    @company_requests = CompanyRequest.all

    render json: @company_requests
  end

  # GET /company_requests/1
  def show
    render json: @company_request
  end

  # POST /company_requests
  def create
    @company_request = CompanyRequest.new(company_request_params)

    if @company_request.save
      render json: @company_request, status: :created, location: @company_request
    else
      render json: @company_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /company_requests/1
  def update
    if @company_request.update(company_request_params)
      render json: @company_request
    else
      render json: @company_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /company_requests/1
  def destroy
    @company_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_request
      @company_request = CompanyRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def company_request_params
      params.require(:company_request).permit(:name, :email, :admin_name)
    end
end
