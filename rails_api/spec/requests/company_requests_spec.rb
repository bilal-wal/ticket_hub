require 'rails_helper'

RSpec.describe 'CompanyRequests', type: :request do

  describe 'GET /company_requests' do
    it 'needed authorization' do
      get company_requests_path
      expect(response).to have_http_status(401)
    end
  end
end
