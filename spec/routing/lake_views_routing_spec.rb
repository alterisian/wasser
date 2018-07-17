require "rails_helper"

RSpec.describe LakeViewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lake_views").to route_to("lake_views#index")
    end

    it "routes to #new" do
      expect(:get => "/lake_views/new").to route_to("lake_views#new")
    end

    it "routes to #show" do
      expect(:get => "/lake_views/1").to route_to("lake_views#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lake_views/1/edit").to route_to("lake_views#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lake_views").to route_to("lake_views#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lake_views/1").to route_to("lake_views#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lake_views/1").to route_to("lake_views#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lake_views/1").to route_to("lake_views#destroy", :id => "1")
    end

  end
end
