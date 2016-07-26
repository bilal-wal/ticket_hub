require 'rails_helper'

RSpec.describe 'Comments', type: :request do

  describe 'GET /comments' do
    it 'needed authorization' do
      get comments_path
      expect(response).to have_http_status(401)
    end
  end
end
