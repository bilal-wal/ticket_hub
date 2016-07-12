require "rails_helper"

RSpec.describe LoginRequestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/login_requests").to route_to("login_requests#index")
    end

    it "routes to #show" do
      expect(:get => "/login_requests/1").to route_to("login_requests#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/login_requests").to route_to("login_requests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/login_requests/1").to route_to("login_requests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/login_requests/1").to route_to("login_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/login_requests/1").to route_to("login_requests#destroy", :id => "1")
    end

  end
end
