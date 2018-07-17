require "rails_helper"

RSpec.describe LakesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lakes").to route_to("lakes#index")
    end

    it "routes to #new" do
      expect(:get => "/lakes/new").to route_to("lakes#new")
    end

    it "routes to #show" do
      expect(:get => "/lakes/1").to route_to("lakes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lakes/1/edit").to route_to("lakes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lakes").to route_to("lakes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lakes/1").to route_to("lakes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lakes/1").to route_to("lakes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lakes/1").to route_to("lakes#destroy", :id => "1")
    end

  end
end
