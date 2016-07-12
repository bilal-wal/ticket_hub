require 'rails_helper'

RSpec.describe "LoginRequests", type: :request do
  describe "GET /login_requests" do
    it "works! (now write some real specs)" do
      get login_requests_path
      expect(response).to have_http_status(200)
    end
  end
end
