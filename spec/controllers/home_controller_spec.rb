require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/").to route_to(
        :controller => "home",
        :action => "index")
    end
  end

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
