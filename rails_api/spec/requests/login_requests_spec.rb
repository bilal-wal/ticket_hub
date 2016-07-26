require 'rails_helper'

RSpec.describe 'LoginRequests', type: :request do

  describe 'GET /login_requests' do
    it 'needed authorization' do
      get login_requests_path
      expect(response).to have_http_status(401)
    end
  end
end
