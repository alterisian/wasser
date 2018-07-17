require "rails_helper"

RSpec.describe UserVisitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_visits").to route_to("user_visits#index")
    end

    it "routes to #new" do
      expect(:get => "/user_visits/new").to route_to("user_visits#new")
    end

    it "routes to #show" do
      expect(:get => "/user_visits/1").to route_to("user_visits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_visits/1/edit").to route_to("user_visits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_visits").to route_to("user_visits#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_visits/1").to route_to("user_visits#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_visits/1").to route_to("user_visits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_visits/1").to route_to("user_visits#destroy", :id => "1")
    end

  end
end
