require 'rails_helper'

RSpec.describe 'Tickets', type: :request do

  describe 'GET /tickets' do
    it 'needed authorization' do
      get tickets_path
      expect(response).to have_http_status(401)
    end
  end
end
