class SessionsController < Devise::SessionsController
  respond_to :html, :json
  skip_before_action :authenticate_user_from_token!, only: :create
  skip_before_action :authenticate_user!, only: :create

  def create
    super do |user|
      if request.format.json?
        data = {
            token: user.authentication_token,
            email: user.email,
            full_name: user.full_name,
            role: user.role,
            company_id: user.company_id
        }
        render json: data, status: 201 and return
      end
    end
  end
end
