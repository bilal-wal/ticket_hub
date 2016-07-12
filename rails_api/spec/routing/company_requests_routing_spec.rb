require "rails_helper"

RSpec.describe CompanyRequestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/company_requests").to route_to("company_requests#index")
    end

    it "routes to #show" do
      expect(:get => "/company_requests/1").to route_to("company_requests#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/company_requests").to route_to("company_requests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/company_requests/1").to route_to("company_requests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/company_requests/1").to route_to("company_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/company_requests/1").to route_to("company_requests#destroy", :id => "1")
    end

  end
end
